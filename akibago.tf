resource "github_team" "akibago" {
  name        = "akibago"
  description = "Akiba.go team"
  privacy     = "closed"
}

resource "github_repository" "akibago" {
  name = "akibago"
}

resource "github_team_repository" "akibago_repo" {
  team_id    = "${github_team.akibago.id}"
  repository = "${github_repository.akibago.name}"
  permission = "push"
}

resource "github_team_membership" "member" {
  team_id  = "${github_team.akibago.id}"
  username = "ojiry"
  role     = "maintainer"
}
