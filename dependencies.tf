data "github_repository_file" "this" {
  count      = length(var.file_names)
  repository = var.repository
  branch     = var.branch
  file       = var.file_names[count.index]
}
