locals {
  admin_maintainers               = local.admin_list.maintainer
  admin_members                   = local.admin_list.member
  org_owners                      = local.owner_list.owner

  all_members = distinct(concat(
    local.admin_maintainers,
    local.admin_members,
  ))
  owners = distinct(local.org_owners)
}

# role を adminにするとownerに設定される
resource "github_membership" "membership_owners" {
  for_each = toset(local.owners)
  username = each.value
  role     = "admin"
  provider = github.zukizukizuki
}

# maintainer と member からownerを除き、memberとする
resource "github_membership" "membership_members" {
  for_each = toset([
    for x in local.all_members : x if !contains(local.owners, x)
  ])
  username = each.value
  role     = "member"
  provider = github.zukizukizuki
}