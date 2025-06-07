# C++, Clang, Google Test

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
# C++/Clang/Google Test の動作確認とインストール
# 1. 各種バージョン・gtest の有無を確認
#   - clang++/clang: C++/C コンパイラ
#   - pkg-config: gtest のバージョン確認用
#   - gtest: Google Test 本体
#
clang++ --version && clang --version && pkg-config --modversion gtest || echo 'gtest not found'

# 2. Google Test をインストール
sudo apt-get update && sudo apt-get install -y libgtest-dev

# 3. インストール確認
ls /usr/src/googletest && echo 'gtest installed'

# 4. 再度バージョン・gtest ディレクトリ確認
clang++ --version && clang --version && cmake --version && ls /usr/src/googletest
```

### テストの実行

一括

```shell
clang++ -std=c++17 functions.cpp sum_to_n_test.cpp bubble_sort_test.cpp fibonacci_test.cpp -lgtest -lgtest_main -pthread -o all_tests && ./all_tests
```

個別

```shell
clang++ -std=c++17 functions.cpp sum_to_n_test.cpp -lgtest -lgtest_main -pthread -o sum_to_n_test && ./sum_to_n_test
```

### 拡張機能

以下をインストール:

- Optional: [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
- [DavidSchuldenfrei.gtest-adapter（Google Test Adapter）](https://marketplace.visualstudio.com/items?itemName=DavidSchuldenfrei.gtest-adapter) https://marketplace.visualstudio.com/items?itemName=DavidSchuldenfrei.gtest-adapter
- [CodeLLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb) https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb

```shell
# cpptools is optional, but recommended for C++ development.
code --install-extension ms-vscode.cpptools
code --install-extension DavidSchuldenfrei.gtest-adapter
code --install-extension vadimcn.vscode-lldb
```

### デバッガの設定（済）

`.vscode/launch.json`, `.vscode/tasks.json` に一定の記述を追加する

拡張機能インストール後に、設定を読み込むために、拡張機能や、Window をリロードする必要があることがあります。

### デバッガの設定（初回実施）

1. VS Code のテストタブ（フラスコのアイコン）を開きます
2. （必要であれば）「↔ Switch Test Configuration」をクリックします
3. 「(lldb) Launch all_tests」を選択します
4. 「↻ リフレッシュ」を選択します

### デバッガの開始

個別のテストをデバッグする方法:

1. VS Code のテストタブを開きます
2. クラス・関数のリストを開きます
3. 必要な関数の上で右クリックし「Debug」で実行できます

あるいは、[sum_to_n_test.cpp](sum_to_n_test.cpp) を開き、テスト関数の上に表示される「Debug」を選択することでも実行できます。

全テストを実行する方法:

1. VS Code のデバッグタブを開きます
2. 「(lldb) Launch all_tests」を選択します
3. 実行ボタン（緑の三角形）をクリックしてデバッグを開始します

実行しても、何も起きていないように見えても、問題はありません。次の手順にしたがって、ブレークポイントを設定します（ブレークポイント設定後も何も起きない場合は何らかの設定ミスが考えられます）。

### プログラムの実行・ステップ実行

[functions.cpp](functions.cpp) を開いておきます。

1. デバッグしたいコードにブレークポイントを設定します
    - コードの左の行番号の少し左の空白でクリックします
    - 赤い丸が表示されます
2. デバッグを開始 [F5] すると、ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### 環境の準備手順

```shell
# C++/Clang/Google Test の動作確認とインストール
# 1. 各種バージョン・gtest の有無を確認
#   - clang++/clang: C++/C コンパイラ
#   - pkg-config: gtest のバージョン確認用
#   - gtest: Google Test 本体
#
clang++ --version && clang --version && pkg-config --modversion gtest || echo 'gtest not found'

# 2. Google Test をインストール
sudo apt-get update && sudo apt-get install -y libgtest-dev

# 3. インストール確認
ls /usr/src/googletest && echo 'gtest installed'

# 4. 再度バージョン・gtest ディレクトリ確認
clang++ --version && clang --version && cmake --version && ls /usr/src/googletest
```

コードを書く

テストの実行には以下のコマンドを使用しました。

```shell
clang++ -std=c++17 functions.cpp sum_to_n_test.cpp bubble_sort_test.cpp fibonacci_test.cpp -lgtest -lgtest_main -pthread -o all_tests && ./all_tests
```

### ドキュメント・関連リソース

- [Google Test を使ってみる（その４：VSCode拡張機能編）](https://developer.mamezou-tech.com/blogs/2022/11/20/google-test-04/)
- [ETロボコンにおける開発環境 - Google Test Adapterとデバッガ](https://zenn.dev/fujiyamaegg/articles/d0879f8a191171)
- [GoogleTest adapter GitHub](https://github.com/DavidSchuldenfrei/gtest-adapter)
- [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
- [DavidSchuldenfrei.gtest-adapter（Google Test Adapter）](https://marketplace.visualstudio.com/items?itemName=DavidSchuldenfrei.gtest-adapter)
