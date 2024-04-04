output "file_content" {
  value       = data.github_repository_file.this[*].content
  description = "The file content."
}
