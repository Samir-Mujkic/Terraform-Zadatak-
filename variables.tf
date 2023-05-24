variable "aws_cli_profile" {}
variable "region" {
  type    = string
  default = "eu-west-1"
}

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

variable "image" {
  description = "Id of image"
  type        = string

}

variable "t2micro" {
  description = "Name of the Instance"

  type = string

}

variable "minec2" {
  description = "minimal number of instance"
  type        = number

}

variable "desiredec2" {
  description = "Desired number of instance"
  type        = number

}
variable "maxec2" {
  description = "Maximum number of instance"
  type        = number

}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket to be created"
  type        = string
}

# variable "s_bucket_name" {
#   type = string
  
# }

variable "key_name" {
  description = "Name of the S3 bucket"
  type        = string

}

variable "aws_iam_instance_profile_test_profile_name" {
  description = "Ime Test Instance profile"
  type        = string


}

variable "aws_autoscaling_group_asg_name" {
  description = "Name of ASG"
  type        = string

}

variable "launch_template_version" {
  description = "Verzija launch templeta"
  type        = string

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

# variable "vpc_identification" {
#   type = string
  
# }

# variable "vpc_id" {
#   type = string
  
# }

# variable "vpc_zone_identifier" {
#   type = string
  
# }

# variable "s3_idenfication" {
#   type = string

# }

variable "role" {
  type = string
  
}

# variable "iam_identification" {
#   type = string
  
# }

