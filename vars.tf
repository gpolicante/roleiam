
variable "name_role" {
  type        = string
  description = "name role"
  

}

variable "name_policy" {
  type        = string
  description = "name role"
  

}

variable "boundary_role" { 
type = string 
description = "limit permission"


}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "role_permission" { 
type = list(string)

}

variable "role_service" { 
type = list(string)

}

variable "policy_limits_resource" { 
type = list(string)

}

variable "effect" { 
type = string
}