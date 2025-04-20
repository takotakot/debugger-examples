# TypeScript + Node.js + Jest

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
npm install
```

### 拡張機能

JavaScript Debugger ms-vscode.js-debugger
は、予め、環境にインストールされているように見える

### デバッガの設定

以下の手順でデバッガを設定します（実施済）。

1. VS Code のデバッグタブを開きます
2. 「歯車アイコン」をクリックして `launch.json` を作成します
3. 以下の設定を追加します

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "node",
      "request": "launch",
      "name": "Debug Jest Tests",
      "program": "${workspaceFolder}/node_modules/.bin/jest",
      "args": ["--runInBand"],
      "console": "integratedTerminal",
      "internalConsoleOptions": "neverOpen"
    }
  ]
}
```

### デバッガの開始

1. VS Code のデバッグタブを開く
2. `launch.json` を設定してデバッグを開始
3. 「Debug Jest Tests」を選択します
4. 実行ボタン（緑の三角形）をクリックしてデバッグを開始します

### プログラムの実行・ステップ実行

1. デバッグしたいコードにブレークポイントを設定します
2. デバッグを開始 [F5] すると、ブレークポイントでコードの実行が停止します
3. ステップオーバー、ステップイン、ステップアウトを使用してコードの流れを確認します

## 参考

### 環境の準備手順

```shell
# Node.js のインストール
sudo apt update && sudo apt install -y nodejs npm

# TypeScript のインストール
npm install -g typescript

# Jest のインストール
npm install --save-dev jest @types/jest ts-jest
```

`functions.ts` に3関数を実装させた。

以下のコマンドでテストフレームワークを導入した。

```bash
npm init -y
npm install --save-dev jest @types/jest ts-jest
```

以下のコマンドで `ts-jest` の初期設定を行った。

```bash
npx ts-jest config:init
```

`functions.test.ts` に3関数のテストを実装させ、その後、テストを修正させた。

### ドキュメント・関連リソース

- [Node.js](https://nodejs.org/)
- [TypeScript](https://www.typescriptlang.org/)
- [Jest](https://jestjs.io/)