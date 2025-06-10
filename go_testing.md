# Go, testing

## デバッガでステップ実行を行う手順

### 環境の準備（不要）

```shell
go version
# Goには標準でtestingフレームワークが含まれているため追加インストール不要
```

### 拡張機能

以下をインストール:

- [Go](https://marketplace.visualstudio.com/items?itemName=golang.go) golang.go

```shell
code --install-extension golang.go
```

### デバッガの設定（不要）

<!-- `.vscode/launch.json` に一定の記述を追加する -->

### デバッガの開始

1. VS Code のテストタブを開きます
2. クラス・関数のリストを開きます
3. 必要な関数の上にマウス ホバーさせ、「テストのデバッグ」をクリックします

あるいは、[main_test.go](main_test.go) を開き、テスト関数の上で右クリックし、「テストをデバッグ」を選択することでも実行できます。

### プログラムの実行・ステップ実行

1. デバッグしたいコードにブレークポイントを設定します
    - コードの左の行番号の少し左の空白でクリックします
    - 赤い丸が表示されます
2. デバッグを開始 [F5] すると、ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### 環境の準備手順

```shell
go version
# Goには標準でtestingフレームワークが含まれているため追加インストール不要
```

コードを書く

```shell
go mod init debugger-examples
```

### ドキュメント・関連リソース

- [Go extension golang.go](https://marketplace.visualstudio.com/items?itemName=golang.go) golang.go
