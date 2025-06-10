# Debugger Examples

Debugger examples for many languages

## License

These codes are licensed under CC0 or MIT. You can choose whichever suits your needs.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)
[MIT](https://opensource.org/licenses/MIT) (If you need, use `Copyright (c) 2025 takotakot`)

## 概要

このリポジトリ `debugger-examples` は、各種プログラミング言語とテストフレームワークを用いて、デバッガのステップ実行を体験するためのサンプルプログラムを提供する。各言語ごとにブランチを切り替えることで、異なる環境でのデバッグ体験を学ぶことができる。

## 言語・テストフレームワーク

- [branch ts_node_jest](../ts_node_jest/ts_node_jest.md) TypeScript, Node.js, Jest
- [branch ts_node_vitest](../ts_node_vitest/ts_node_vitest.md) TypeScript, Node.js, Vitest
- [branch ruby_rspec](../ruby_rspec/ruby_rspec.md) Ruby, RSpec
- [branch python_unittest](../python_unittest/python_unittest.md) Python(CPython), unittest

## 実装する関数

各言語で以下の関数を実装し、それぞれに対応するユニットテストを作成する。

1. **整数の合計を計算する関数**
   - 正の整数 `n` を与えると、1 から `n` までの合計を計算して返す
   - 正の整数以外が与えられた場合は `0` を返す

2. **バブルソートを行う関数**
   - 整数の配列を与えると、バブルソートを行い、ソート済みの配列を返す

3. **フィボナッチ数列を計算する関数**
   - 正の整数 `n` を与えると、再帰を用いてフィボナッチ数列の `n` 番目の値を計算して返す
   - 正の整数以外が与えられた場合は `0` を返す

## 各ブランチの内容

各ブランチには、以下の情報を記載する。

1. **環境の準備手順**
   - 必要なツールや依存関係のインストール方法

2. **デバッガでステップ実行を行う手順**
   - GitHub Codespaces にローカルの VS Code からアタッチする方法
   - 必要な拡張機能のインストール方法
   - プログラムの実行方法

## サンプルプログラムの目的

- デバッガを用いて、変数の値や処理の流れをステップ実行で確認する
- 各言語のテストフレームワークを使用して、ユニットテストの実行方法を学ぶ

## 注意点

- 各ブランチでの環境構築やデバッグ手順は、言語やフレームワークに応じて異なる
- 必要に応じて、各環境に用意された Markdown ファイルを参照しながら進める

## 関数の疑似コード

### 整数の合計

```plaintext
function sum_to_n(n):
    if n <= 0:
        return 0
    total = 0
    for i from 1 to n:
        total = total + i
    return total
```

### バブルソート

```plaintext
function bubble_sort(array):
    n = length of array
    for i from 0 to n-1:
        for j from 0 to n-i-2:
            if array[j] > array[j+1]:
                swap array[j] and array[j+1]
    return array
```

### フィボナッチ数列

```plaintext
function fibonacci(n):
    if n <= 0:
        return 0
    if n == 1:
        return 1
    return fibonacci(n-1) + fibonacci(n-2)
```

## メタな内容

各言語・環境のブランチを作成するときに、作成する人が LLM 支援で作成できるようにするため、[`instruction_template.md`](./instruction_template.md) を用意してある。LLM への指示例として、大いに活用してほしい。
