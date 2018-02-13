resource "github_repository" "slack-meetup" {
  name = "slack-meetup"
  description = ""
  has_issues = true
  has_wiki = true
  has_downloads = true
}

resource "github_team_repository" "slack-meetup" {
  team_id    = "${github_team.members.id}"
  repository = "${github_repository.slack-meetup.name}"
  permission = "push"
}
