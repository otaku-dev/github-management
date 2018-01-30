resource "github_repository" "snippets" {
  name = "snippets"
  has_issues = true
  has_wiki = true
  has_downloads = false
}

resource "github_team_repository" "snippets" {
  team_id    = "${github_team.members.id}"
  repository = "${github_repository.snippets.name}"
  permission = "push"
}
