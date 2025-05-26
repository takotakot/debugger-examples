# Rust + test ユニットテスト実行手順

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
# Rust 言語ランタイムのインストール
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. $HOME/.cargo/env
rustc --version
# Rust 標準のテストフレームワーク（cargo test）は Rust インストール時に同梱されています
# Cargo プロジェクトの場合、追加の導入コマンドは不要です
```

### 拡張機能

以下をインストール:

- [CodeLLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb) vadimcn.vscode-lldb
- [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer) rust-lang.rust-analyzer
- [Rust Test Explorer](https://marketplace.visualstudio.com/items?itemName=swellaby.vscode-rust-test-adapter) swellaby.vscode-rust-test-adapter

```shell
code --install-extension vadimcn.vscode-lldb
code --install-extension rust-lang.rust-analyzer
code --install-extension swellaby.vscode-rust-test-adapter
```

### デバッガの設定（済）

~~`.vscode/launch.json` に一定の記述を追加する~~
rust-analyzer のための設定として、`.vscode/settings.json` に以下を追加すると良い。

```json:settings.json
{
    "rust-analyzer.testExplorer": true,
    "rust-analyzer.runnables.extraEnv": {
        "PATH": "${userHome}/.cargo/bin/:${env:PATH}",
    },
}
```

### デバッガの開始

`tests/` にあるテストファイル [`sum_to_n_test.rs`](tests/sum_to_n_test.rs) を開きます。

1. VS Code のテストタブを開きます
2. クラス・関数のリストを開きます
3. 必要な関数の上にマウス ホバーさせ、「テストのデバッグ」をクリックします

あるいは、[`sum_to_n_test.rs`](tests/sum_to_n_test.rs) を開き、テスト関数の上の、"Debug" を選択することでも実行できます。

### プログラムの実行・ステップ実行

1. デバッグしたいコードにブレークポイントを設定します
    - コードの左の行番号の少し左の空白でクリックします
    - 赤い丸が表示されます
2. デバッグを開始 [F5] すると、ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### 環境の準備手順

```shell
# Rust 言語ランタイムのインストール
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. $HOME/.cargo/env
rustc --version
# Rust 標準のテストフレームワーク（cargo test）は Rust インストール時に同梱されています
# Cargo プロジェクトの場合、追加の導入コマンドは不要です
```

コードを書く

### ドキュメント・関連リソース

- [CodeLLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb) vadimcn.vscode-lldb
- [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer) rust-lang.rust-analyzer
- [Rust Test Explorer](https://marketplace.visualstudio.com/items?itemName=swellaby.vscode-rust-test-adapter) swellaby.vscode-rust-test-adapter
