# Python と unittest を用いたデバッグ環境

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
# unittest は Python 標準ライブラリの一部であり、追加インストールは不要
# 必要に応じて以下のコマンドで確認可能
python3 -m unittest --help
```

### 拡張機能

以下をインストール:

- Python (ms-python.python)

### デバッガの設定（済）

`.vscode/launch.json` に一定の記述を追加する

### デバッガの開始

1. VS Code のデバッグタブを開きます
2. 「Python: Current File」を選択します
3. 実行ボタン（緑の三角形）をクリックしてデバッグを開始します

### プログラムの実行・ステップ実行

1. デバッグしたいコードにブレークポイントを設定します
    - コードの左の行番号の少し左の空白でクリックします
    - 赤い丸が表示されます
2. デバッグを開始 [F5] すると、ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### 環境の準備手順

```shell
# Python と unittest の確認
python3 --version
pip3 --version
# unittest は Python 標準ライブラリの一部であり、追加インストールは不要
# 必要に応じて以下のコマンドで確認可能
python3 -m unittest --help
```

3関数を実装させた

ユニットテストを実装させた

### ドキュメント・関連リソース

- [Python Debugging in VS Code](https://code.visualstudio.com/docs/python/debugging)
