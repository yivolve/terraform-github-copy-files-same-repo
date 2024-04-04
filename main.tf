resource "github_repository_file" "this" {
  count               = length(var.source_file_names)
  repository          = var.repository
  branch              = var.branch
  overwrite_on_create = true
  file                = var.target_path == "" ? "${var.target_path}${basename(var.source_file_names[count.index])}" : "${var.target_path}/${basename(var.source_file_names[count.index])}"
  content             = data.github_repository_file.this[count.index].content
  commit_message      = "[Terraform Automation] copying ${join(",", var.source_file_names)} to ${var.target_path}"
  commit_author       = "[Terraform Automation]"
  commit_email        = "terraform@an-utterly-fake-domain.local"
}
