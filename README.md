# easterコマンド
![test](https://github.com/mobluebird/robosys2025/actions/workflows/test.yml/badge.svg)

ガウスのアルゴリズムを利用して西方教会（グレゴリオ暦）の復活祭日を計算する。

標準入力から西暦年（整数）を読み込み、復活祭の日付を **YYYY MM DD** 形式で標準出力に返す。

(ここに前のページの項目をいろいろ書く)
## 使い方
**実行方法の例**<br>
* 単一の年を計算したい場合<br>
```
$ echo 2025 | ./easter
2025 04 20
```

* 複数の年をまとめて計算したい場合<br>
```
$ echo -e "2024\n2023\n2022" | ./easter
2024 03 31
2023 04 09
2022 04 17
```

* 予期しない入力の場合<br>
```
$ echo "abc" | ./easter
入力が正しくありません: abc
```

## インストール
* GitHubからcloneする
```
$ git clone https://github.com/mobluebird/robosys2025
$ cd robosys2025
```

* 実行権限を付与する
```
$ chmod +x easter
```
これで ./easter として使えるようになる。


## 必要なソフトウェア
- Python
  - テスト済みバージョン:3.7～3.14

## テスト環境
- Ubuntu 24.04 LTS


- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

© 2025 Motona Shigehisa
