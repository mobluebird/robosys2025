# easterコマンド
![test](https://github.com/mobluebird/robosys2025/actions/workflows/test.yml)
![Python](https://img.shields.io/badge/Python-3.7--3.14-blue)
![License](https://img.shields.io/badge/License-BSD--3--Clause-green.svg)

ガウスのアルゴリズムを利用して西方教会のイースターの日付を計算する。

標準入力から西暦年を読み込み、イースターの日付を **YYYY MM DD** 形式で標準出力に返す。

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
以下の手順で行う。
- リポジトリをクローンする
```
$ git clone https://github.com/mobluebird/robosys2025.git$ cd robosys2025
```
- ディレクトリに移動する
```
$ cd robosys2025
```
- 実行権限を付与する
```
$ chmod +x easter
```
これで ./easter として使えるようになる。
- 実行する
```
$ echo 2025 | ./easter
```

## テスト方法
- 付属のテストスクリプト test.bash を実行
```
$ bash ./test.bash
OK
```
- GitHub Actions（自動テスト）
上部のバッジで最新のテスト状態を確認できる。

## 必要なライブラリ
- 標準ライブラリ

## 必要なソフトウェア
- Python
  - テスト済みバージョン:3.7～3.14

## テスト環境
- Ubuntu 24.04 LTS

## 謝辞


## ライセンスと著作権
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです。
  - [ryuichiueda/slides_marp/robosys2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- イースター日付計算ロジックは以下の MIT ライセンスの実装を参考にしました。  
  - dim13/easter  
    https://github.com/dim13/easter/blob/master/easter.go  
    (c) 2015 dim13, MIT License
- © 2025 Motona Shigehisa
