variable "aws_security_group_alb_sg_name_prefix" {
  description = "Name prefix za SCG ALB"
  type        = string

}

variable "aws_security_group_alb_sg_description" {
  type = string

}

variable "aws_security_group_alb_sg_ingress_from_port80" {
  type = number

}

variable "aws_security_group_alb_sg_ingress_to_port80" {
  type = number

}

variable "aws_security_group_alb_sg_ingress_protocol_tcp" {
  type = string

}

variable "aws_security_group_alb_sg_ingress_cidr_blocks" {
  type = list(any)

}

variable "aws_security_group_alb_sg_ingress_from_port443" {
  type = number

}

variable "aws_security_group_alb_sg_ingress_to_port443" {
  type = number

}

variable "aws_security_group_alb_sg_tags_name" {
  type = string

}

variable "aws_lb_example_name" {
  type = string

}

variable "aws_lb_example_internal_false" {
  type = bool

}

variable "aws_lb_example_load_balancer_type" {
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

variable "aws_lb_example_vpc_identification" {
  type = string
  
}

variable "vpc_id" {
  type = string
  
}

variable "subnets" {
  type = set(string)
  
}

variable "target_group_arn" {
  type = string
  
}

variable "load_balancer_arn" {
  type = string
  
}