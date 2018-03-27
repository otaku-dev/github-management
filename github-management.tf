resource "github_repository" "github-management" {
  name = "github-management"
  has_issues = true
  has_wiki = false
  has_downloads = true
}

resource "github_branch_protection" "github-management" {
  repository = "github-management"
  branch = "master"

  required_status_checks {
    strict = true
  }
}
