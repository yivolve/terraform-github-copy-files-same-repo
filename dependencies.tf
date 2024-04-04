data "github_repository_file" "this" {
  count      = length(var.source_file_names)
  repository = var.repository
  branch     = var.branch
  file       = var.source_file_names[count.index]
}
