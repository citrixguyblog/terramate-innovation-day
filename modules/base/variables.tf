variable "deployment_subscription_id" {
  type = string
}

variable "azure_region" {
  description = "Azure region to use."
  type        = string
}

variable "client_name" {
  description = "Client name/account used in naming."
  type        = string
}

variable "environment" {
  description = "Project environment."
  type        = string
}

variable "stack" {
  description = "Project stack name."
  type        = string
}

variable "readers_object_ids" {
  description = "Object IDs of the users/groups/identities allowed to read from the Key Vault."
  type        = list(string)
  default     = []
}

# log_analytics
variable "retention_in_days" {
  description = "The number of days that logs should be retained."
  type        = number
  default     = 30
}
