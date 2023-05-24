resource "aws_autoscaling_group" "asg" {
  name                = var.aws_autoscaling_group_asg_name
  vpc_zone_identifier = var.vpc_zone_identifier
  min_size            = var.minec2
  desired_capacity    = var.minec2
  max_size            = var.minec2
  
  

    launch_template {
    id      = aws_launch_template.lt.id
    version = var.launch_template_version
   

  }
}

resource "aws_launch_template" "lt" {
  image_id      = var.image
  instance_type = var.t2micro
  key_name      = data.aws_key_pair.example.key_name
  iam_instance_profile {
    name = aws_iam_instance_profile.test_profile.name
  }
}

resource "aws_iam_instance_profile" "test_profile" {
  name = var.aws_iam_instance_profile_test_profile_name
  role = var.role
}

# resource "aws_autoscaling_attachment" "example" {
#   autoscaling_group_name = module.asg.aws_autoscaling_group_asg_name
#   lb_target_group_arn    = module.alb.aws_lb_target_group_arn
# }

# module "iam" {
#   source = "../iam"
#   s3_bucket_name = var.s3_bucket_name
#   aws_iam_instance_profile_test_profile_name = var.aws_iam_instance_profile_test_profile_name
  
# }

data "aws_key_pair" "example" {
  key_name = var.key_name

}

# module "vpc" {
#   source = "../vpc"
#   aws_vpc_main_tags_name = var.aws_vpc_main_tags_name
#   aws_internet_gateway_gw_tags_name = var.aws_internet_gateway_gw_tags_name
#   aws_route_table_second_rt_cidr_block = var.aws_route_table_second_rt_cidr_block
#   aws_route_table_second_rt_tags_name = var.aws_route_table_second_rt_tags_name
  
  
# }



# module "alb" {
#   source = "../alb"
#   aws_security_group_alb_sg_ingress_to_port443 = var.aws_security_group_alb_sg_ingress_to_port443
#   aws_lb_example_name = var.aws_lb_example_name
#   aws_security_group_alb_sg_name_prefix = var.aws_security_group_alb_sg_name_prefix
#   aws_security_group_alb_sg_ingress_from_port443 = var.aws_security_group_alb_sg_ingress_from_port443
#   aws_lb_example_load_balancer_type = var.aws_lb_example_load_balancer_type
#   aws_vpc_main_tags_name = var.aws_vpc_main_tags_name
#   aws_security_group_alb_sg_ingress_to_port80 = var.aws_security_group_alb_sg_ingress_to_port80
#   aws_security_group_alb_sg_ingress_from_port80 = var.aws_security_group_alb_sg_ingress_from_port80
#   aws_route_table_second_rt_cidr_block = var.aws_route_table_second_rt_cidr_block
#   aws_route_table_second_rt_tags_name = var.aws_route_table_second_rt_tags_name
#   aws_internet_gateway_gw_tags_name = var.aws_internet_gateway_gw_tags_name
#   aws_lb_example_internal_false = var.aws_lb_example_internal_false
#   aws_security_group_alb_sg_description = var.aws_security_group_alb_sg_description
#   aws_security_group_alb_sg_ingress_cidr_blocks = var.aws_security_group_alb_sg_ingress_cidr_blocks
#   aws_security_group_alb_sg_ingress_protocol_tcp = var.aws_security_group_alb_sg_ingress_protocol_tcp
#   aws_security_group_alb_sg_tags_name = var.aws_security_group_alb_sg_tags_name
# }

resource "aws_autoscaling_attachment" "example" {
  autoscaling_group_name = var.aws_autoscaling_group_asg_name
  lb_target_group_arn    = var.lb_target_group_arn
}

# module.asg.aws_autoscaling_group_name
# module.tg.tg