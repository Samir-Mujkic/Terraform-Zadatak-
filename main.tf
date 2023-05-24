# TASK
# ASG & LAUNCH TEMPLATE 
module "asg" {
  source = "./asg"
  launch_template_version = var.launch_template_version
  image = var.image
  t2micro = var.t2micro
  minec2 = var.minec2
  desiredec2 = var.desiredec2
  maxec2 = var.maxec2
  key_name = var.key_name
  aws_iam_instance_profile_test_profile_name = var.aws_iam_instance_profile_test_profile_name
  aws_autoscaling_group_asg_name = var.aws_autoscaling_group_asg_name
  s3_bucket_name = var.s3_bucket_name
  aws_vpc_main_tags_name = var.aws_vpc_main_tags_name
  aws_internet_gateway_gw_tags_name = var.aws_internet_gateway_gw_tags_name
  aws_route_table_second_rt_cidr_block = var.aws_route_table_second_rt_cidr_block
  aws_route_table_second_rt_tags_name = var.aws_route_table_second_rt_tags_name
  aws_lb_example_name = var.aws_lb_example_name
  aws_security_group_alb_sg_name_prefix = var.aws_security_group_alb_sg_name_prefix
  aws_security_group_alb_sg_ingress_to_port80 = var.aws_security_group_alb_sg_ingress_to_port80
  aws_security_group_alb_sg_ingress_from_port80 = var.aws_security_group_alb_sg_ingress_from_port80
  aws_security_group_alb_sg_ingress_from_port443 = var.aws_security_group_alb_sg_ingress_from_port443
  aws_lb_example_load_balancer_type = var.aws_lb_example_load_balancer_type
  aws_security_group_alb_sg_ingress_cidr_blocks = var.aws_security_group_alb_sg_ingress_cidr_blocks
  aws_security_group_alb_sg_ingress_to_port443 = var.aws_security_group_alb_sg_ingress_to_port443
  aws_security_group_alb_sg_description = var.aws_security_group_alb_sg_description
  aws_security_group_alb_sg_ingress_protocol_tcp = var.aws_security_group_alb_sg_ingress_protocol_tcp
  aws_security_group_alb_sg_tags_name = var.aws_security_group_alb_sg_tags_name
  aws_lb_example_internal_false = var.aws_lb_example_internal_false
  vpc_identification = module.vpc.vpc_id
  alb_identificator = module.alb.alb
  vpc_zone_identifier = module.vpc.public_subnets
  iam_identificator = module.iam.aws_iam_role_arn
  role = var.role
  lb_target_group_arn = module.tg.tg
  autoscaling_group_name = module.asg.aws_autoscaling_group_name



  
  
}

module "iam" {
  source = "./iam"
  aws_iam_instance_profile_test_profile_name = var.aws_iam_instance_profile_test_profile_name
  s3_bucket_name = var.s3_bucket_name
  s3_idenfication = module.s3.s_bucket_name
  s_bucket_name = module.s3.s_bucket_name

}

# ADD PEM KEY 

data "aws_key_pair" "example" {
  key_name = var.key_name

}

# MADE VPC FROM AWS

module "vpc" {
  source = "./vpc"

  aws_internet_gateway_gw_tags_name    = var.aws_internet_gateway_gw_tags_name
  aws_route_table_second_rt_cidr_block = var.aws_route_table_second_rt_cidr_block
  aws_vpc_main_tags_name               = var.aws_vpc_main_tags_name
  aws_route_table_second_rt_tags_name  = var.aws_route_table_second_rt_tags_name
  
}

# S3 MODULE
module "s3" {
   source = "./s3"  
   s3_bucket_name = var.s3_bucket_name

}

module "alb" {
  source = "./alb"
  aws_lb_example_internal_false = var.aws_lb_example_internal_false
  aws_security_group_alb_sg_name_prefix = var.aws_security_group_alb_sg_name_prefix
  aws_security_group_alb_sg_description = var.aws_security_group_alb_sg_description
  aws_security_group_alb_sg_ingress_from_port80 = var.aws_security_group_alb_sg_ingress_from_port80
  aws_security_group_alb_sg_ingress_cidr_blocks = var.aws_security_group_alb_sg_ingress_cidr_blocks
  aws_security_group_alb_sg_ingress_from_port443 = var.aws_security_group_alb_sg_ingress_from_port443
  aws_security_group_alb_sg_ingress_to_port443 = var.aws_security_group_alb_sg_ingress_to_port443
  aws_security_group_alb_sg_ingress_protocol_tcp = var.aws_security_group_alb_sg_ingress_protocol_tcp
  aws_security_group_alb_sg_tags_name = var.aws_security_group_alb_sg_tags_name
  aws_lb_example_name = var.aws_lb_example_name
  aws_lb_example_load_balancer_type = var.aws_lb_example_load_balancer_type
  aws_security_group_alb_sg_ingress_to_port80 = var.aws_security_group_alb_sg_ingress_to_port80
  aws_internet_gateway_gw_tags_name = var.aws_internet_gateway_gw_tags_name
  aws_route_table_second_rt_cidr_block = var.aws_route_table_second_rt_cidr_block
  aws_route_table_second_rt_tags_name = var.aws_route_table_second_rt_tags_name
  aws_vpc_main_tags_name = var.aws_vpc_main_tags_name
  aws_lb_example_vpc_identification = module.vpc.vpc_id
  vpc_id = module.vpc.vpc_id
  subnets = module.vpc.public_subnets
  target_group_arn = module.tg.tg
  load_balancer_arn = module.alb.alb_arn
  

  

}

# MADE TARGET GROUP , ADD VPC

module "tg" {
  source = "./tg"
  aws_lb_target_group_example_name_prefix = var.aws_lb_target_group_example_name_prefix
  aws_lb_target_group_example_port80 = var.aws_lb_target_group_example_port80
  aws_lb_target_group_example_protocol_http = var.aws_lb_target_group_example_protocol_http
  aws_lb_target_group_example_health_check_path = var.aws_lb_target_group_example_health_check_path
  aws_lb_target_group_example_health_check_protocol_http = var.aws_lb_target_group_example_health_check_protocol_http
  aws_lb_target_group_example_tags_terraform = var.aws_lb_target_group_example_tags_terraform
  aws_lb_target_group_example_tags_environment = var.aws_lb_target_group_example_tags_environment
  aws_internet_gateway_gw_tags_name = var.aws_internet_gateway_gw_tags_name
  aws_route_table_second_rt_cidr_block = var.aws_route_table_second_rt_cidr_block
  aws_route_table_second_rt_tags_name = var.aws_route_table_second_rt_tags_name
  aws_vpc_main_tags_name = var.aws_vpc_main_tags_name
  vpc_id = module.vpc.vpc_id
  
}

# ASSOCIATE ASG WITH TG


# resource "aws_autoscaling_attachment" "example" {
#   autoscaling_group_name = module.asg.aws_autoscaling_group_name
#   lb_target_group_arn    = module.tg.tg
# }



