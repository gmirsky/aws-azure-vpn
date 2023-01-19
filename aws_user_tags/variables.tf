variable "environment" {
  type        = string
  description = "Environment value"
  validation {
    condition     = can(regex("dev|test|qa|prod", var.environment))
    error_message = "ERROR: environment must be of type: dev, test, qa or prod."
  }
  sensitive = false
}
#
variable "custom_tags" {
  type        = map(string)
  description = "Custom AWS tags provided by the user"
  default = {
  }
  sensitive = false
}
#