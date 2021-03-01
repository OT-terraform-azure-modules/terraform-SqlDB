# SQL Database Name
variable "sqlDb_Name" {
  type        = string
  description = "Specify the SQL database name here."
  default     = "TerraformSqlDb"
}

variable "sqlDb_RG_Name" {
  type        = string
  description = "Resource Group Name that will get picked from another module"
}

variable "sqlDb_Location" {
  type        = string
  description = "Location for SQL DB that will get picked from another module"
}

variable "sqlDb_Server_Name" {
  type        = string
  description = "Server Name for SQL DB that will get picked from another module"
}

variable "sqlDb_Tag" {
  type = map(string)
  default = {
    env : "dev"
  }
}
