


# VPC-CIDR
variable "vpc-cidr" {
  default = "10.0.0.0/16"
}

# PUBLIC-SUBNET
variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# PRIVATE-SUBNET

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

# AV-ZONE

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}


variable "aws_vpc_main_tags_name" {
  description = "Tag name za VPC"
  type        = string

}

variable "aws_internet_gateway_gw_tags_name" {
  description = "Tag name za internet gateway "
  type        = string

}

variable "aws_route_table_second_rt_cidr_block" {
  description = "Cidr block za PUBLIC SUBNET U ROUTE TABLE"
  type        = string

}

variable "aws_route_table_second_rt_tags_name" {
  description = "Tag Name for Public Subnet u Route Table"
  type        = string
}


