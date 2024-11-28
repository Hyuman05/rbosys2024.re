# robosys2024

ロボットシステム学の練習リポジトリ

# plus＿omikujiコマンドの概要

[![test](https://github.com/Hyuman05/robosys2024/actions/workflows/test2.yml/badge.svg)](https://github.com/Hyuman05/robosys2024/blob/main/.github/workflows/test2.yml)

一日の運勢をおみくじで教えてくれるプログラムです。

標準入力に日付（月・日）を入力すると、プログラムに組み込まれている確率の元、大吉、吉、中吉、小吉、末吉、凶、大凶と出力されます。
#準備

下記のコマンドでリポジトリのクローンを行ってください

```
git clone https://github.com/Hyuman05/robosys2024
```

その後下記のコマンドでディレクトリに移動してください

```
cd robosys2024
```

# 使い方

`plus_omikuji`は以下の入力方法に対応しています:

- 月と日を入力（数字での入力）
```
echo 月/日 | ./plus_omikuji
```

のように入力してください。


また

```
echo 01/01 |./plus_omikuji
```

のように、0を入れても1/1として実行されます。

- 実行例

正常な入力
以下の例では、1月1日の標準入力で、実行しています。

```
$echo 1/1 |./plus_omikuji
今日の運勢は: 大吉
```

```
$echo 01/01 |./plus_omikuji
今日の運勢は: 大吉
```

```
$echo １/１ |./plus_omikuji
今日の運勢は: 大吉
```

異常な入力
以下の例では、異常な入力がされたときの応答

空白
```
echo  |./plus_omikuji
無効な入力です。MM/DDの形式で入力してください。
```

文字
```
echo a |./plus_omikuji
無効な入力です。MM/DDの形式で入力してください。
```

存在しない日にち
```
echo 13/14 |./plus_omikuji
月は1~12、日にちは1~31の範囲で入力してください。
```
- 補足
  - MM/DDとは、月/日のこと
# 環境

## 必要なソフトウェア
- Python
    - テスト済み:3.7~3.10

## テスト環境
- Ubuntu-latest\Ubuntu-22.04.5LTS

# ライセンス
- このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布>および使用が許可されます。

- このパッケージのplus_omikuji,test2.bash以外のコードは下記スラ>イド（CC-BY=SA 4.0 by ryuichi ueda）のものを、本人の許可を得て自身の著作としたものです。
  - https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024

© 2024 Hyuta Sasaki
