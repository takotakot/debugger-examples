# Haskell, Hspec

## デバッガでステップ実行を行う手順

非推奨

### 環境の準備

```shell
mkdir -p ~/.ghcup/bin/
curl -sSL https://downloads.haskell.org/~ghcup/x86_64-linux-ghcup -o ~/.ghcup/bin/ghcup
chmod +x ~/.ghcup/bin/ghcup
echo 'export PATH="$HOME/.ghcup/bin:$PATH"' >> ~/.profile
echo 'export PATH="$HOME/.ghcup/bin:$PATH"' >> ~/.bashrc
```

ターミナルの再起動（閉じて別のを開く）

```shell
~/.ghcup/bin/ghcup install stack
stack install ghci haskell-dap ghci-dap haskell-debug-adapter hspec
```

### 拡張機能

以下をインストール:

- [Haskell](https://marketplace.visualstudio.com/items?itemName=haskell.haskell) https://marketplace.visualstudio.com/items?itemName=haskell.haskell
- [Haskell GHCi Debug Adapter Phoityne](https://marketplace.visualstudio.com/items?itemName=phoityne.phoityne-vscode) https://marketplace.visualstudio.com/items?itemName=phoityne.phoityne-vscode

```shell
code --install-extension haskell.haskell
code --install-extension phoityne.phoityne-vscode
```

### デバッガの設定（済）

`.vscode/launch.json` に一定の記述を追加する

### デバッガの開始

準備:

```shell
stack build
```

1. VS Code のデバッグタブを開きます
2. 「haskell(stack)」を選択します
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
ghc --version && cabal --version
sudo apt-get update && sudo apt-get install -y ghc cabal-install
cabal update && cabal install hspec
```

コードを書く

### テスト実行方法

```shell
runhaskell Spec.hs
```

### デバッグ準備

```shell
cabal install ghci-dap haskell-debug-adapter
```

### ドキュメント・関連リソース

- [Placeholder](https://example.com)
