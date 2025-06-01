# Skeleton <- please rename

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
# C++/GCC/Google Test の動作確認とインストール
# 1. 各種バージョン・gtest の有無を確認
g++ --version && gcc --version && cmake --version && pkg-config --modversion gtest || echo 'gtest not found'

# 2. Google Test をインストール
sudo apt-get update && sudo apt-get install -y libgtest-dev

# 3. インストール確認
ls /usr/src/googletest && echo 'gtest installed'

# 4. 再度バージョン・gtest ディレクトリ確認
g++ --version && gcc --version && cmake --version && ls /usr/src/googletest
```

### 拡張機能

以下をインストール:

- Placeholder Debugger for X aaaa.yyy

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
# C++/GCC/Google Test の動作確認とインストール
# 1. 各種バージョン・gtest の有無を確認
g++ --version && gcc --version && cmake --version && pkg-config --modversion gtest || echo 'gtest not found'

# 2. Google Test をインストール
sudo apt-get update && sudo apt-get install -y libgtest-dev

# 3. インストール確認
ls /usr/src/googletest && echo 'gtest installed'

# 4. 再度バージョン・gtest ディレクトリ確認
g++ --version && gcc --version && cmake --version && ls /usr/src/googletest
```

コードを書く

### ドキュメント・関連リソース

- [Placeholder](https://example.com)
