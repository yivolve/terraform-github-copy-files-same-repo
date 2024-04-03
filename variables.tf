variable "repository" {
  type        = string
  description = "(String): (Required) The repository to read the file from. If an unqualified repo name (without an owner) is passed, the owner will be inferred from the owner of the token used to execute the plan. If a name of the type 'owner/repo' (with a slash in the middle) is passed, the owner will be as specified and not the owner of the token."
}

variable "branch" {
  type        = list(string)
  description = "(list of strings): (Optional) Git branch. Defaults to the repository's default branch."
}

variable "file_names" {
  type        = list(string)
  description = "(list of strings): (Required) Name of files to move"
}
