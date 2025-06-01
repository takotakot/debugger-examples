# Skeleton <- please rename

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
# C++/GCC/Google Test の動作確認とインストール
# 1. 各種バージョン・gtest の有無を確認
#   - g++/gcc: C++/C コンパイラ
#   - cmake: Google Test のビルドに必要
#   - pkg-config: gtest のバージョン確認用
#   - gtest: Google Test 本体
#
g++ --version && gcc --version && cmake --version && pkg-config --modversion gtest || echo 'gtest not found'

# 2. Google Test をインストール
sudo apt-get update && sudo apt-get install -y libgtest-dev

# 3. インストール確認
ls /usr/src/googletest && echo 'gtest installed'

# 4. 再度バージョン・gtest ディレクトリ確認
g++ --version && gcc --version && cmake --version && ls /usr/src/googletest
```

### テストの実行

一括

```shell
g++ -std=c++17 functions.cpp sum_to_n_test.cpp bubble_sort_test.cpp fibonacci_test.cpp -lgtest -lgtest_main -pthread -o all_tests && ./all_tests
```

個別

```shell
g++ -std=c++17 functions.cpp sum_to_n_test.cpp -lgtest -lgtest_main -pthread -o sum_to_n_test && ./sum_to_n_test
```

### 拡張機能

以下をインストール:

- [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
- [DavidSchuldenfrei.gtest-adapter（Google Test Adapter）](https://marketplace.visualstudio.com/items?itemName=DavidSchuldenfrei.gtest-adapter) https://marketplace.visualstudio.com/items?itemName=DavidSchuldenfrei.gtest-adapter

```shell
code --install-extension ms-vscode.cpptools
code --install-extension DavidSchuldenfrei.gtest-adapter
```

### デバッガの設定（済）

`.vscode/launch.json`, `.vscode/tasks.json` に一定の記述を追加する

1. VS Code のテストタブを開きます
2. 「↔ Switch Test Configuration」をクリックします
3. 「(gdb) Launch all_tests」を選択します
4. 「↻ リフレッシュ」を選択します

### デバッガの開始

個別のテストをデバッグする方法:

1. VS Code のテストタブを開きます
2. クラス・関数のリストを開きます
3. 必要な関数の上にマウス ホバーさせ、虫アイコンをクリックします（右クリックし「デバッグ」でも実行できます）

あるいは、[sum_to_n_test.cpp](sum_to_n_test.cpp) を開き、テスト関数の上に表示される「Debug」を選択することでも実行できます。

全テストを実行する方法:

1. VS Code のデバッグタブを開きます
2. 「(gdb) Launch all_tests」を選択します
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
#   - g++/gcc: C++/C コンパイラ
#   - cmake: Google Test のビルドに必要
#   - pkg-config: gtest のバージョン確認用
#   - gtest: Google Test 本体
#
g++ --version && gcc --version && cmake --version && pkg-config --modversion gtest || echo 'gtest not found'

# 2. Google Test をインストール
sudo apt-get update && sudo apt-get install -y libgtest-dev

# 3. インストール確認
ls /usr/src/googletest && echo 'gtest installed'

# 4. 再度バージョン・gtest ディレクトリ確認
g++ --version && gcc --version && cmake --version && ls /usr/src/googletest
```

コードを書く

テストの実行には以下のコマンドを使用しました。

```shell
g++ -std=c++17 functions.cpp sum_to_n_test.cpp bubble_sort_test.cpp fibonacci_test.cpp -lgtest -lgtest_main -pthread -o all_tests && ./all_tests
```

### ドキュメント・関連リソース

- [Placeholder](https://example.com)
