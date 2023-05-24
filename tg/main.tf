# MADE TARGET GROUP , ADD VPC

resource "aws_lb_target_group" "example" {
  name_prefix = var.aws_lb_target_group_example_name_prefix
  port        = var.aws_lb_target_group_example_port80
  protocol    = var.aws_lb_target_group_example_protocol_http
  vpc_id      = var.vpc_id
  
  
  


  health_check {
    path     = var.aws_lb_target_group_example_health_check_path
    protocol = var.aws_lb_target_group_example_health_check_protocol_http
  }

  tags = {
    Terraform   = var.aws_lb_target_group_example_tags_terraform
    Environment = var.aws_lb_target_group_example_tags_environment
  }
}

# module "vpc" {
#     source = "../vpc"
#     aws_vpc_main_tags_name = var.aws_vpc_main_tags_name
#     aws_internet_gateway_gw_tags_name = var.aws_internet_gateway_gw_tags_name
#     aws_route_table_second_rt_cidr_block = var.aws_route_table_second_rt_cidr_block
#     aws_route_table_second_rt_tags_name = var.aws_route_table_second_rt_tags_name
  
# }



