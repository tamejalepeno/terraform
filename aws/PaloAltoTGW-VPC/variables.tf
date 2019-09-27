//This section should be verified and modified accordingly.
variable aws_region {
  description = "AWS Region for deployment"
#  default     = "us-east-2"
  default     = "us-east-1"
}

variable aws_key {
  description = "aws_key"
#  default     = "AWS-Ohio-Key"
  default     = "cbollinger7-kp-1a"
}

//Do not create these.  The Terraform will do that.  Just need to make secure
//the s3 bucket names are unique.

variable bootstrap_s3bucket {
  description = "S3 Bucket Name used to Bootstrap the NGFWs"
  default     = "pa-poc-tgw-bucket1i-randomtext"
}

variable bootstrap_s3bucket2 {
  description = "S3 Bucket Name used to Bootstrap the NGFWs"
  default     = "pa-poc-tgw-bucket2-randomtext"
}

//End of the section that MUST be modified to work
variable management_cidr {
  description = "CIDR Address for Management Access"
  default     = "0.0.0.0/0"
}

variable vpc_security_cidr {
  description = "CIDR Address for Security VPC"
  default     = "10.128.150.0/23"
}

variable vpc_security_subnet_public_1 {
  description = "CIDR Address for Security VPC"
  default     = "10.128.150.0/26"
}

variable vpc_security_subnet_private_1 {
  description = "CIDR Address for Security VPC"
  default     = "10.128.150.64/26"
}

variable fw_ip_subnet_private_1 {
  description = "CIDR Address for Security VPC"
  default     = "10.128.150.95"
}

variable fw_ip_subnet_public_1 {
  description = "CIDR Address for Security VPC"
  default     = "10.128.150.45"
}

variable vpc_security_subnet_tgw_1 {
  description = "CIDR Address for TGW Security VPC"
  default     = "10.128.150.128/26"
}

variable vpc_security_subnet_public_2 {
  description = "CIDR Address for Security VPC"
  default     = "10.128.151.0/26"
}

variable vpc_security_subnet_private_2 {
  description = "CIDR Address for Security VPC"
  default     = "10.128.151.64/26"
}

variable vpc_security_subnet_tgw_2 {
  description = "CIDR Address for TGW Security VPC"
  default     = "10.128.151.128/26"
}

variable fw_ip_subnet_private_2 {
  description = "CIDR Address for Security VPC"
  default     = "10.128.151.75"
}

variable fw_ip_subnet_public_2 {
  description = "CIDR Address for Security VPC"
  default     = "10.128.151.25"
}

variable spoke1_cidr {
  description = "CIDR Address for Spoke1 VPC"
  default     = "10.128.148.0/24"
}

variable spoke1_subnet {
  description = "CIDR Address for Spoke1 Subnet"
  default     = "10.128.148.0/26"
}

variable spoke1_subnet2 {
  description = "CIDR Address for Spoke1 Subnet"
  default     = "10.128.148.64/26"
}

variable spoke1_server {
  description = "Server Address for Spoke1 Server"
  default     = "10.128.148.45"
}

variable spoke1_server2 {
  description = "Server Address for Spoke1 Server2"
  default     = "10.128.148.95"
}

variable spoke2_cidr {
  description = "CIDR Address for Spoke2 VPC"
  default     = "10.128.149.0/24"
}

variable spoke2_subnet {
  description = "CIDR Address for Spoke2 Subnet"
  default     = "10.128.149.0/26"
}

variable spoke2_subnet2 {
  description = "CIDR Address for Spoke2 Subnet"
  default     = "10.128.149.64/26"
}

variable spoke2_server {
  description = "Server Address for Spoke2 Server"
  default     = "10.128.149.45"
}

variable spoke2_server2 {
  description = "Server Address for Spoke2 Server2"
  default     = "10.128.149.95"
}
