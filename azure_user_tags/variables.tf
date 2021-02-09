variable "environment" {
  type        = string
  description = "Environment value"
  validation {
    condition     = can(regex("dev|test|qa|prod", var.environment))
    error_message = "ERROR: environment must be of type: dev, test, qa or prod."
  }
}

variable "custom_tags" {
  type        = map(string)
  description = "Custom Azure tags provided by the user"
  default = {
  }
}