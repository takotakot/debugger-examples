# Ruby, Rspec

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
# ~/.ruby が /opt/ruby/2.7.7/ を指していて、rvm の ruby バージョンと異なる場合、以下を実行
rm ~/.ruby/current

bundle install
```

### 拡張機能

以下をインストール:

- VSCode rdbg Ruby Debugger `koichisasada.vscode-rdbg`

```shell
code --install-extension koichisasada.vscode-rdbg
```

必要に応じて、手動で、拡張機能を有効にする

### デバッガの設定（済）

`.vscode/launch.json` に一定の記述を追加する

### デバッガの開始

必要に応じて [`functions.rb`](functions.rb) を開いておきます

1. VS Code のデバッグタブを開きます
2. 「Debug all spepc」を選択します
3. 実行ボタン（緑の三角形）をクリックしてデバッグを開始します

### プログラムの実行・ステップ実行

まず、`functions.rb` を開いておきます。

1. デバッグしたいコードにブレークポイントを設定します
    - コードの左の行番号の少し左の空白でクリックします
    - 赤い丸が表示されます
2. デバッグを開始 [F5] すると、ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### 環境の準備手順

以下の手順で環境を準備してください。

1. `Gemfile` を作成し、以下の内容を記載します。

```ruby
source 'https://rubygems.org'

gem 'rspec'

```

2. 以下のコマンドを実行して依存関係をインストールします。

```shell
bundle install
```

3. インストールが完了したら、以下のコマンドで RSpec のバージョンを確認できます。

```shell
rspec --version
```

3関数を実装させた

RSpec のテストを作成し、各関数をテスト駆動開発で開発させた

### ドキュメント・関連リソース

- [VSCode rdbg Ruby Debugger](https://marketplace.visualstudio.com/items?itemName=KoichiSasada.vscode-rdbg)
- [vscode-rdbg GitHub](https://github.com/ruby/vscode-rdbg)
