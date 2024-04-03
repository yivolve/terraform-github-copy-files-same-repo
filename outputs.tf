output "file_content" {
  value       = github_repository_file[*].this.content
  description = "The file content."
}
