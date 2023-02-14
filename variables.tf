variable "vpc_cidr" {
  type = string
  description = "VPC Cidr"

}

variable "dns_support" {
  type = bool
  description = "Enable DNS Suppport"
}

variable "dns_host_names" {
  type = bool
  description = "Enable DNS Hostnames"
}

variable "name" {
  type = string
  description = "Name of the Variable"
}

variable "subnet_cidr" {
  type = string
  description = "Subnet CIDR"
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Map Public IP address on Launch"
}