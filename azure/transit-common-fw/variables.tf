#-----------------------------------------------------------------------------------------------------------------
# Azure environment variables
variable location {
  description = "Enter a location"
  default     = "eastus"
}

variable resource_group_name {
  default = "PaloAltoTestRG"
}

#-----------------------------------------------------------------------------------------------------------------
# Azure VNET variables for VM-Series
variable vnet_name {
  default = "PaloAltoTestVNET"
}

variable vnet_cidr {
  default = "10.133.48.0/22"
}

variable subnet_names {
  type    = "list"
  default = ["mgmt", "untrust", "trust"]
}

variable subnet_cidrs {
  type    = "list"
  default = ["10.133.48.0/24", "10.133.49.0/24", "10.133.50.0/24"]
}

#-----------------------------------------------------------------------------------------------------------------
# VM-Series variables
variable "fw_names" {
  type        = "list"
  description = "Enter names for the firewalls. For every name entered, an additional instance is created"
  default     = ["PaloAltoTest-vmseries-fw1", "PaloAltoTest-vmseries-fw2"]
}
variable "fw_nsg_prefix" {
  description = "This address prefix will be able to access the firewall's mgmt interface over TCP/443 and TCP/22"
  default     = "143.215.0.0/16"
}

variable "fw_avset_name" {
  default = "PaloAltoTest-avset"
}

variable "fw_panos" {
  default = "latest"
}

variable "fw_license" {
  # default = "byol"
  # default = "bundle1"
  default = "bundle2"
}

variable "fw_username" {
  default = "paloalto"
}

variable "fw_password" {
  default = "PanPassword123!"
}

variable "fw_bootstrap_storage_account" {
  description = "Azure storage account to bootstrap firewalls"
  default     = "paygopaloteststorage"
}

variable "fw_bootstrap_access_key" {
  description = "Access key of the bootstrap storage account"
  default     = "Ol7GrKJztzfs2u+k4ZHRQsPU1odD9mtslp+5LXTnHFgc+hFGaxesbW5HP7PFbQMzXuMAilrRjZ83k+ylma7qow=="
}

variable "fw_bootstrap_file_share" {
  description = "Storage account's file share name that contains the bootstrap directories"
  default     = "my-bootstrap-file-share"
}

variable "fw_bootstrap_share_directory" {
  description = "Storage account's share directory name (useful if deploying multiple firewalls)"
  default     = "None"
}

variable "prefix" {
  description = "Prefix to prepend to newly created resources"
  default     = ""
}

#-----------------------------------------------------------------------------------------------------------------
# Azure load balancer variables
variable "public_lb_name" {
  default = "PaloAltoTestPublic-lb"
}

variable "public_lb_allowed_ports" {
  type    = "list"
  default = ["80", "443", "22"]
}

variable "internal_lb_name" {
  default = "PaloAltoTestInternal-lb"
}

variable "internal_lb_address" {
  default = "10.133.50.100"
}
