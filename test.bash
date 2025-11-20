#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Motona Shigehisa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}
res=0

# 2025年のイースターは4月20日
out=$(echo 2025 | ./easter)
[ "${out}" = "2025 04 20" ] || ng "$LINENO"

# 2000年のイースターは4月23日
out=$(echo 2000 | ./easter)
[ "${out}" = "2000 04 23" ] || ng "$LINENO"

# 2023,2024,2025年のイースターは4月9日,3月31日,4月20日
out=$(printf "2023\n2024\n2025\n" | ./easter)
answer=$(
cat <<EOF
2023 04 09
2024 03 31
2025 04 20
EOF
)
[ "${out}" = "$answer" ] || ng "$LINENO"

# 空入力の場合はエラー
out=$(echo | ./easter)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

# 異常入力の場合はエラー
for invalid in あ a @ "#$"; do
    out=$(echo $invalid | ./easter)
    [ "$?" = 1 ] || ng "$LINENO"
    [ "${out}" = "" ] || ng "$LINENO"
done

# 境界値
for y in 1 4 1000 2000 2100 9999; do
    out=$(echo $y | ./easter)
    # 日付の妥当性チェックだけ（手計算やリスト参照）
    [[ "${out}" =~ ^[0-9]{4}\ [0-9]{2}\ [0-9]{2}$ ]] || ng "$LINENO"
done

# 混合入力（正しい年 + 文字列混在）
out=$(printf "2023\nあ\n2025\n" | ./easter 2>/dev/null)
# 正しい年のみ出力、文字列はエラーで途中で止まる
[[ "$?" = 1 ]] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res

