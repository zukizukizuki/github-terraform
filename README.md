# ghe-management

### Description

- Githubの構成をテストするTerraformです

### 構成

```text
.
├── owner
|  └── owner.yaml         ... ownerのリスト
├── team_members
|  └── ${team_name}.yaml  ... team memberのリスト
├── README.md
├── backend.tf            ... providerの設定
├── variables.tf          ... 変数の設定
└── ${name}.tf            ... 任意のリソースを定義
```

### リソース命名規則
#### team_member.tf

リソース名：
${team名}_${role}

#### team.tf
リソース名：
${team名}