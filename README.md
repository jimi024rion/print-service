# print-service

Google Cloudの学習のために、某コンビニプリントサービスを題材としたアプリケーションを作成する。

## ディレクトリ構成(イメージ)

ひとまず以下のイメージ。
TODO: 作成しながら修正していく

```shell
.
├── frontend/                   # フロントエンドアプリケーション
├── backend/                    # バックエンド（Go）アプリケーション
│   ├── cmd/                    # 各Cloud RunやCloud Functionsのエントリポイント
│   │   ├── <サービス名>/
│   │   │   ├── Dockerfile
│   │   │   ├── main.go
│   │   │   └── handlers/
│   ├── internal/               # アプリケーション内部のロジック
│   │   ├── services/           # 共通サービス（ビジネスロジック）
│   │   └── repositories/       # 共通リポジトリ（データベースアクセス）
│   ├── pkg/                    # 共通ライブラリ
│   │   ├── utils/              # 共通のユーティリティ関数
│   │   └── middleware/         # ミドルウェアなど
│   ├── configs/                # 設定ファイル（.yaml, .jsonなど）
│   ├── migrations/             # データベースマイグレーション
│   └── go.mod                  # Go modules依存関係ファイル
├── infra/                      # インフラストラクチャ（IaC）
│   └── terraform/              # Terraform構成ファイル
│       │── environments/       # 環境ごとの設定（dev, staging, prod）
│       │   ├── dev/            # 開発環境用のTerraform設定
│       │   ├── stg/            # ステージング環境用のTerraform設定
│       │   └── prod/           # 本番環境用のTerraform設定
│       └── modules/            # 再利用可能なTerraformモジュール
│           ├── common/
│           └── <サービス名>/
├── .github/                    # Github ActionsなどのCI/CD構成
│   ├── workflows/              # ワークフローファイル
│   │   └── ci-cd.yaml          # CI/CDパイプライン定義
├── .gitignore                  # Gitの無視ファイルリスト
└── README.md                   # プロジェクト概要

```
