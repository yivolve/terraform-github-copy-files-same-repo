data "github_repository_file" "this" {
  count = length(var.file_names)
  repository          = var.repo_name
  branch              = var.branch
  file                = var.file_names[count.index]
}
