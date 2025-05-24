# Jara, JUnit, Maven

## デバッガでステップ実行を行う手順

### 環境の準備（不要）

```shell
# バージョン確認
# Java のバージョンが古くても動作には問題がない
java --version
mvn --version
# コードのコンパイル
mvn compile
```

### 拡張機能

以下をインストール:

- [Debugger for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-debug) vscjava.vscode-java-debug
- [Language Support for Java(TM) by Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.java) redhat.java
- [Test Runner for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-test) vscjava.vscode-java-test

```shell
code --install-extension vscjava.vscode-java-debug
code --install-extension redhat.java
code --install-extension vscjava.vscode-java-test
```

### デバッガの設定（済）

`.vscode/launch.json` に一定の記述を追加する
ただし、Test Runner を用いるので、今回は不要

### デバッガの開始

`src/test/java/com/example/` にあるテストファイル [`AppTest.java`](src/test/java/com/example/AppTest.java) を開きます。

1. VS Code のテストタブを開きます
2. クラス・関数のリストを開きます
3. 必要な関数の上にマウス ホバーさせ、「テストのデバッグ」をクリックします

あるいは、`AppTest.java` を開き、テスト関数の上で右クリックし、「テストをデバッグ」を選択したり、`Ctrl+: Ctrl+F` を押したりすることでも実行できます。

### プログラムの実行・ステップ実行

1. デバッグしたいコードにブレークポイントを設定します
    - コードの左の行番号の少し左の空白でクリックします
    - 赤い丸が表示されます
2. 「デバッガの開始」の手順でテストを実行すると、ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### 環境の準備手順

```shell
mvn archetype:generate -DgroupId=com.example -DartifactId=debugger-examples -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```

コードを書く

### pom.xml に依存関係を追加

JUnit 5 を使用するために、`pom.xml` に以下の依存関係を追加しました。

```xml
<dependency>
  <groupId>org.junit.jupiter</groupId>
  <artifactId>junit-jupiter</artifactId>
  <version>5.9.3</version>
  <scope>test</scope>
</dependency>
```

これにより、JUnit 5 のモダンなテスト機能を利用できます。

### ドキュメント・関連リソース

- [Testing Java with Visual Studio Code](https://code.visualstudio.com/docs/java/java-testing)
- [Running and debugging Java](https://code.visualstudio.com/docs/java/java-debugging)
- [Debugger for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-debug) vscjava.vscode-java-debug
- [Language Support for Java(TM) by Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.java) redhat.java
- [Test Runner for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-test) vscjava.vscode-java-test
