resource "github_team" "admin" {
  name        = "admin"
  description = ""
  privacy     = "closed"
  provider    = github.zukizukizuki
}
