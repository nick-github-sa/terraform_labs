variable "application_name" {
  type = string

  validation {
    condition = length(var.application_name) <= 12 
    error_message = "Application name must be less than or equal to 12 characters"
  }
}
variable "environment_name" {
type = string
}
variable "api_key" {
  type = string
  sensitive = true
}
variable "enabled" {
  type = bool
  
}
variable "regions" {
  type = list(string)
  
}
variable "region_instance_count" {
  type = map(string)
  
}
variable "region_set" {
  type = set(string)
  
}
variable "sku_settings" {
  type = object({
    kind = string
    tier = string 
  })
  
}