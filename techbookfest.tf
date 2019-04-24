resource "github_repository" "techbookfest" {
  name          = "techbookfest"
  description   = ""
  private       = true
  has_issues    = true
  has_wiki      = true
  has_downloads = true
}

resource "github_team_repository" "techbookfest" {
  team_id    = "${github_team.techbookfest.id}"
  repository = "${github_repository.techbookfest.name}"
  permission = "push"
}
