# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "db_username" {
  description = "The username for the database"
  type        = string
  sensitive   = true
  default     = "tua" # should not provide default in real deployment
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
  default     = "Test123$" # should not provide default in real deployment
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "db_name" {
  description = "The name to use for the database"
  type        = string
  default     = "example_database_stage"
}

