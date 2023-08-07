# github-terraform

### Description

- Githubの構成をテストするTerraformです

### Directory Layout

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

### resource naming rule
#### team_member.tf

リソース名：
${team名}_${role}

#### team.tf
リソース名：
${team名}