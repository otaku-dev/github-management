resource "github_team" "members" {
  name        = "members"
  privacy     = "closed"
}

resource "github_team_membership" "member" {
  team_id  = "${github_team.members.id}"
  username = "ojiry"
  role     = "maintainer"
}
