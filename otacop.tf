resource "github_repository" "otacop" {
  name = "otacop"
  description = "OtaCop is a RuboCop configration gem"
  has_issues = true
  has_wiki = true
  has_downloads = true
}

resource "github_team_repository" "otacop" {
  team_id    = "${github_team.members.id}"
  repository = "${github_repository.otacop.name}"
  permission = "push"
}
