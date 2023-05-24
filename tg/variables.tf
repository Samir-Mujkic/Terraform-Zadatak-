variable "aws_lb_target_group_example_name_prefix" {
  type = string

}

variable "aws_lb_target_group_example_port80" {
  type = number

}

variable "aws_lb_target_group_example_protocol_http" {
  type = string

}

variable "aws_lb_target_group_example_health_check_path" {
  type = string

}

variable "aws_lb_target_group_example_health_check_protocol_http" {
  type = string

}

variable "aws_lb_target_group_example_tags_terraform" {
  type = string

}

variable "aws_lb_target_group_example_tags_environment" {
  type = string

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

variable "vpc_id" {
  type = string
  
}