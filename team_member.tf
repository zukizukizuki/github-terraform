locals {
  admin_list               = yamldecode(file("./team_members/admin.yaml"))
}

resource "github_team_membership" "admin_maintainers" {
  for_each = toset(local.admin_list.maintainer)
  team_id  = github_team.admin.id
  username = each.value
  role     = "maintainer"
  provider = github.zukizukizuki
}

resource "github_team_membership" "admin_members" {
  for_each = toset(local.admin_list.member)
  team_id  = github_team.admin.id
  username = each.value
  role     = "member"
  provider = github.zukizukizuki
}