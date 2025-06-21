# Skeleton <- please rename

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
sudo apt-get install -y apt-transport-https wget && wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg && sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/dart.gpg] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" > /etc/apt/sources.list.d/dart_stable.list' && sudo apt-get update && sudo apt-get install -y dart
```

```shell
dart pub get
```

### 拡張機能

以下をインストール:

- [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code) Dart-Code.dart-code

### デバッガの設定（不要）

~~`.vscode/launch.json` に一定の記述を追加する~~

### デバッガの開始

1. VS Code のテストタブを開きます
2. ファイル・テストのリストを開きます
3. 必要な関数の上にマウス ホバーさせ、「テストのデバッグ」（三角と虫の記号▷🐞）をクリックします

あるいは、`test/` にあるテストファイル [`debugger_examples_test.dart`](test/debugger_examples_test.dart) を開き、テスト定義の上の"Debug"をクリックします。

### プログラムの実行・ステップ実行

`lib` にある関数が実装してあるファイル [`debugger_examples.dart`](lib/debugger_examples.dart) を開きます。

1. デバッグしたいコードにブレークポイントを設定します
    - コードの左の行番号の少し左の空白でクリックします
    - 赤い丸が表示されます
2. 「デバッガの開始」の手順でテストを実行すると、ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### 環境の準備手順

```shell
sudo apt-get install -y apt-transport-https wget && wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg && sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/dart.gpg] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" > /etc/apt/sources.list.d/dart_stable.list' && sudo apt-get update && sudo apt-get install -y dart

dart create --force .

dart pub add test --dev
```

コードを書く

### ドキュメント・関連リソース

- [Get the Dart SDK](https://dart.dev/get-dart)
- [Visual Studio Code](https://dart.dev/tools/vs-code) at dart.dev
- [Dart testing](https://dart.dev/tools/testing)
- [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code) extension for VS Code
