# PHP と PHPUnit 環境

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
# Composer を使用して依存関係をインストール
composer install
```

### 拡張機能

以下をインストール:

- PHP Debug (xdebug.php-debug)

```shell
# PHP Debug 拡張機能をインストール
code --install-extension xdebug.php-debug
```

### デバッガの設定（済）

`.vscode/launch.json` に一定の記述を追加する

### デバッガの開始

1. VS Code のデバッグタブを開きます
2. 「_PLACEHOLDER_」を選択します
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
# Composer を使用して PHPUnit をインストール
composer require --dev phpunit/phpunit
```

3関数を書かせる

3関数のユニットテストを書かせる

### ドキュメント・関連リソース

- [Placeholder](https://example.com)
