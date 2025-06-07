# Skeleton <- please rename

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
# .NET SDK のインストール確認
dotnet --version
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
