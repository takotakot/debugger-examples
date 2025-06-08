# Haskell, Hspec

## デバッガでステップ実行を行う手順

非推奨

### 環境の準備

```shell
# sudo apt-get update && sudo apt-get install -y ghc cabal-install
# sudo apt-get install -y haskell-stack
# cabal update
# cabal install hspec
# cabal install haskell-dap ghci-dap
# cabal install stack
# cabal install haskell-debug-adapter
# stack update
# stack install haskell-debug-adapter

# 以下が良いかもしれない
# HLS のインストールには Y を回答する
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

`curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`

> Press ENTER to proceed or ctrl-c to abort.
Note that this script can be re-run at any given time.

ENTER

> GHCup provides different binary distribution "channels". These are collections of tools
> and may differ in purpose and philosophy. First, we select the base channel.
> 
> [S] Skip  [D] Default (GHCup maintained)  [V] Vanilla (Upstream maintained)  [?] Help (default is "Skip").

ENTER

> Detected bash shell on your system...
> Do you want ghcup to automatically add the required PATH variable to "/home/codespace/.bashrc"?
> 
> [P] Yes, prepend  [A] Yes, append  [N] No  [?] Help (default is "P").

ENTER

> Do you want to install haskell-language-server (HLS)?
> HLS is a language-server that provides IDE-like functionality
> and can integrate with different editors, such as Vim, Emacs, VS Code, Atom, ...
> Also see https://haskell-language-server.readthedocs.io/en/stable/
> 
> [Y] Yes  [N] No  [?] Help (default is "N").

Y ENTER

> Do you want to enable better integration of stack with GHCup?
> This means that stack won't install its own GHC versions, but uses GHCup's.
> For more information see:
>   https://docs.haskellstack.org/en/stable/configure/customisation_scripts/#ghc-installation-customisation
> If you want to keep stacks vanilla behavior, answer 'No'.
> 
> [Y] Yes  [N] No  [?] Help (default is "Y").

ENTER

> System requirements 
>   Please ensure the following distro packages are installed before continuing (you can exit ghcup and return at any time): build-essential curl libffi-dev libffi7 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5 pkg-config
> Press ENTER to proceed or ctrl-c to abort.
> Installation may take a while.

ENTER

完了後に、別のターミナルを開く

```shell
# cabal update
# cabal install hspec
# cabal install haskell-dap ghci-dap
# cabal install stack
# cabal install haskell-debug-adapter

# try
ghcup install ghc --set recommended

stack update
stack install hspec haskell-dap ghci-dap haskell-debug-adapter
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

1. VS Code のデバッグタブを開きます
2. 「haaskell(stack)」を選択します
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
