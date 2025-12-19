# easterコマンド
[![test](https://github.com/mobluebird/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/mobluebird/robosys2025/actions/workflows/test.yml)
![Python](https://img.shields.io/badge/Python-3.7--3.14-blue)
![License](https://img.shields.io/badge/License-BSD--3--Clause-green.svg)

ガウスのアルゴリズムを利用して西方教会のイースターの日付を計算するコマンドです。

標準入力から西暦年を読み込み、イースターの日付を **YYYY MM DD** 形式で標準出力に返します。

## 実行例
- 単一の年を計算したい場合
```
$ echo 2025 | ./easter
2025 04 20
```
- 複数の年をまとめて計算したい場合
```
$ echo -e "2024\n2023\n2022" | ./easter
2024 03 31
2023 04 09
2022 04 17
```
- 予期しない入力の場合
```
$ echo "abc" | ./easter
入力が正しくありません: abc
```

## 使用方法
以下の手順で実行してください。
```
$ git clone https://github.com/mobluebird/robosys2025.git
$ cd robosys2025
$ chmod +x easter
$ echo 2025 | ./easter
```

## 必要なライブラリ
- 標準ライブラリ

## 必要なソフトウェア
- Python
  - テスト済みバージョン:3.7～3.14

## テスト環境
- Ubuntu 24.04 LTS

## 謝辞
- Web記事
  - [暦Wiki：イースター](https://eco.mtk.nao.ac.jp/koyomi/wiki/A5A4A1BCA5B9A5BFA1BC.html)
  - [イースターの日付（jmedia.wiki）](https://jmedia.wiki/%25E3%2581%25AE%25E6%259A%25A6/Date_of_Easter)
  - [イースター（復活祭）の日付（日本ナザレン教団）](https://www.nazarene.or.jp/br1/easter.html)
- 利用・参照したコード
  - このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです。
    - [ryuichiueda/slides_marp/robosys2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
  - イースター日付計算ロジックは、下記のコードを参考にしました。
    - [dim13/easter](https://github.com/dim13/easter/blob/master/easter.go) © 2019 Dimitri Sokolyuk, ISC License

## ライセンス
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。

## 著作権
© 2025 Motona Shigehisa
