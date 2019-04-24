resource "github_team" "members" {
  name    = "members"
  privacy = "closed"
}

resource "github_team_membership" "members_ojiry" {
  team_id  = "${github_team.members.id}"
  username = "ojiry"
  role     = "maintainer"
}

resource "github_team" "techbookfest" {
  name    = "techbookfest"
  privacy = "closed"
}

resource "github_team_membership" "techbookfest_ojiry" {
  team_id  = "${github_team.techbookfest.id}"
  username = "ojiry"
  role     = "maintainer"
}

resource "github_team_membership" "techbookfest_yuukigoodman" {
  team_id  = "${github_team.techbookfest.id}"
  username = "yuukigoodman"
  role     = "maintainer"
}
