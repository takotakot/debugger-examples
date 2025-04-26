# Python, unittest

## デバッガでステップ実行を行う手順

### 環境の準備

GitHub Codespaces 標準の環境をそのまま使用できます。

```shell
# Python と unittest の確認
python3 --version
pip3 --version
# unittest は Python 標準ライブラリの一部であり、追加インストールは不要
# 必要に応じて以下のコマンドで確認可能
python3 -m unittest --help
```

### 拡張機能

以下をインストール:

- Python Debugger (ms-python.debugpy)

```shell
code --install-extension ms-python.debugpy
```

### デバッガの設定（不要）

事前設定は不要です。`test_functions.py` を開いてデバッグを開始できます。

### デバッガの開始

`test_functions.py` を開いておきます。

その1

1. VS Code のデバッグタブを開きます
2. 「実行とデバッグ」を選択します
3. 「Python ファイル（現在アクティブな Python ファイルをデバッグする）」を選択します

その2

1. `test_functions.py` を開いた状態で [F5] キーを押します
2. 「Python ファイル（現在アクティブな Python ファイルをデバッグする）」を選択します

2度目以降は、「（現在アクティブな Python ファイルをデバッグする）」の選択は不要です。

### プログラムの実行・ステップ実行

1. デバッグしたいコードにブレークポイントを設定します
    - コードの左の行番号の少し左の空白でクリックします
    - 赤い丸が表示されます
2. デバッグを開始 [F5] すると、ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### ドキュメント・関連リソース

- [Python Debugging in VS Code](https://code.visualstudio.com/docs/python/debugging)
