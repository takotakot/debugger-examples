# TypeScript + Node.js + Jest

## デバッガでステップ実行を行う手順

### 環境の準備

```shell
```

### 拡張機能

以下をインストール:

- Debugger for Node.js ms-vscode.node-debug2

### デバッガの設定

### デバッガの開始

1. VS Code のデバッグタブを開く
2. `launch.json` を設定してデバッグを開始

### プログラムの実行・ステップ実行

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