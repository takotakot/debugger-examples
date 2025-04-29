# Skeleton <- please rename

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
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

- [Placeholder](https://example.com)
