# Jara, JUnit, Gradle

## デバッガでステップ実行を行う手順

### 環境の準備（不要）

```shell
# Java のバージョン確認
java --version
# Gradle のバージョン確認
gradle --version
# コードのコンパイル
./gradlew build
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

### Maven から Gradle への移行手順

1. 既存の `pom.xml` をもとに `build.gradle` を作成する
    - 依存関係やプロジェクト情報を `build.gradle` に移す
2. `pom.xml` を削除する
3. 必要に応じて Gradle Wrapper (`gradlew`, `gradlew.bat`, `gradle/wrapper/`) を追加する
    - すでにリポジトリに含まれている場合はこの手順は不要
4. 以降のビルド・テスト・デバッグは Gradle コマンドで行う

### Gradle でのビルド・テスト例

```shell
./gradlew build      # プロジェクトのビルド
./gradlew test       # テストの実行
```

`gradle` コマンドがインストールされていれば `gradle build` なども利用可能です。

---

### build.gradle に依存関係を追加

JUnit 5 を使用するために、`build.gradle` に以下の依存関係を追加しました。

```groovy
dependencies {
    testImplementation 'org.junit.jupiter:junit-jupiter:5.13.0-M2'
    testImplementation 'org.junit.platform:junit-platform-launcher:1.13.0-M2'
}
```

これにより、JUnit 5 のモダンなテスト機能を利用できます。

### ドキュメント・関連リソース

- [Testing Java with Visual Studio Code](https://code.visualstudio.com/docs/java/java-testing)
- [Running and debugging Java](https://code.visualstudio.com/docs/java/java-debugging)
- [Debugger for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-debug) vscjava.vscode-java-debug
- [Language Support for Java(TM) by Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.java) redhat.java
- [Test Runner for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-test) vscjava.vscode-java-test
