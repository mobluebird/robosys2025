#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Motona Shigehisa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}
res=0

# 単一の年の場合
out=$(echo 2025 | ./easter)
[ "${out}" = "2025 04 20" ] || ng "$LINENO"

out=$(echo 2000 | ./easter)
[ "${out}" = "2000 04 23" ] || ng "$LINENO"

# 複数の年の場合
out=$(printf "2023\n2024\n2025\n" | ./easter)
answer=$(
cat <<EOF
2023 04 09
2024 03 31
2025 04 20
EOF
)
[ "${out}" = "$answer" ] || ng "$LINENO"

# 空入力の場合
out=$(echo | ./easter 2>/dev/null)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

# 異常入力の場合
for invalid in あ a @ "#$"; do
    out=$(echo $invalid | ./easter 2>/dev/null)
    [ "$?" = 1 ] || ng "$LINENO"
    [ "${out}" = "" ] || ng "$LINENO"
done

# 境界値
for y in 1 4 1000 2000 2100 9999; do
    out=$(echo $y | ./easter)
    [[ "${out}" =~ ^[0-9]{4}\ [0-9]{2}\ [0-9]{2}$ ]] || ng "$LINENO"
done

# 混合入力の場合
out=$(printf "2023\nあ\n2025\n" | ./easter 2>/dev/null)
[[ "$?" = 1 ]] || ng "$LINENO"

[ "$res" = 0 ] && echo "OK"
exit $res

