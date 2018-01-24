resource "github_repository" "github-management" {
  name = "github-management"
  has_issues = true
  has_wiki = true
  has_downloads = true
}

resource "github_branch_protection" "github-management" {
  repository = "github-management"
  branch = "master"
  enforce_admins = true

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = true
  }
}
