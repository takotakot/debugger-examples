# CSharp, xUnit

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
# .NET SDK のインストール確認
dotnet --version
```

### 拡張機能

以下をインストール:

- [C#](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csharp) https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csharp
- [C# Dev Kit](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csdevkit) https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csdevkit

```shell
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.csdevkit
```

ウィンドウのリロードが必要になることがあります。`Ctrl+Shift+P` を押して「Reload Window」を選択します。

### デバッガの設定（済）

~~`.vscode/launch.json` に一定の記述を追加する~~

### デバッガの開始

1. VS Code のテストタブ（フラスコのアイコン）を開きます
2. 場合によっては「↻ テストの更新」をクリックしてテストを更新します
3. クラス・関数のリストを開きます
4. 必要な関数の上にマウス ホバーさせ、「テストのデバッグ」をクリックします

うまくいかなければ、ウィンドウのリロードを試してみてください。

あるいは、[`UnitTest1.cs`](DebuggerExamples.Tests/UnitTest1.cs) を開き、テスト関数の左の行番号付近で右クリックし、「テストをデバッグ」を選択したり、テスト関数で `Ctrl+:, Ctrl+C` を押したりしてデバッグを開始することもできます。

### プログラムの実行・ステップ実行

テストされる関数の実装は [`Functions.cs`](DebuggerExamples/Functions.cs) にあります。

1. デバッグしたいコードにブレークポイントを設定します
    - コードの左の行番号の少し左の空白でクリックします
    - 赤い丸が表示されます
2. ~~デバッグを開始 [F5] すると、~~ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### 環境の準備手順

```shell
# .NET SDK のインストール確認
dotnet --version

# プロジェクトの作成と初期化
dotnet new classlib -n DebuggerExamples && mv DebuggerExamples/Class1.cs DebuggerExamples/Functions.cs && rm -rf DebuggerExamples/Class1.cs DebuggerExamples/bin DebuggerExamples/obj

# xUnit テストフレームワークの導入
dotnet add DebuggerExamples package xunit
# xUnit テストプロジェクトの作成
dotnet new xunit -n DebuggerExamples.Tests
# xUnit テストフレームワークの導入
dotnet add DebuggerExamples.Tests package xunit --version 2.9.3
```

コードを書く

```shell
# ビルド方法
dotnet build
# テスト実行方法
dotnet test DebuggerExamples.Tests
```

### ドキュメント・関連リソース

- [Placeholder](https://example.com)
