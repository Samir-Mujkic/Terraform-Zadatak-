region          = "eu-west-1"
aws_cli_profile = "gpp-aws-certification"

#S3
s3_bucket_name = "my-s3-bucket-nam"

azs = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]

#KEY PEM 
key_name = "Samir"

minec2 = 2

desiredec2 = 3

maxec2 = 5

t2micro = "t2.micro"

image = "ami-06e0ce9d3339cb039"

vpc-cidr = "10.0.0.0/16"

public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

aws_iam_instance_profile_test_profile_name = "testprofile"

aws_autoscaling_group_asg_name = "Autoscaling-Group-Example2"

launch_template_version = "$Latest"
# VPC 
aws_vpc_main_tags_name = "Project VPC"

# INTERNET GATEWAY 
aws_internet_gateway_gw_tags_name = "Project VPC IG"

# ROUTE TABLE FOR PUBLIC SUBNET 
aws_route_table_second_rt_cidr_block = "0.0.0.0/0"

aws_route_table_second_rt_tags_name = "2nd Route Table"

# SCG FOR ALB 
aws_security_group_alb_sg_name_prefix          = "alb-sg-"
aws_security_group_alb_sg_description          = "Security group for ALB"
aws_security_group_alb_sg_ingress_from_port80  = 80
aws_security_group_alb_sg_ingress_to_port80    = 80
aws_security_group_alb_sg_ingress_protocol_tcp = "tcp"
aws_security_group_alb_sg_ingress_cidr_blocks  = ["0.0.0.0/0"]
aws_security_group_alb_sg_ingress_from_port443 = 443
aws_security_group_alb_sg_ingress_to_port443   = 443
aws_security_group_alb_sg_tags_name            = "ALB Security Group"

#  ALB 
aws_lb_example_name               = "example-lbb"
aws_lb_example_internal_false     = false
aws_lb_example_load_balancer_type = "application"

# TARGET GROUP 
aws_lb_target_group_example_name_prefix                = "examp"
aws_lb_target_group_example_port80                     = 80
aws_lb_target_group_example_protocol_http              = "HTTP"
aws_lb_target_group_example_health_check_path          = "/health"
aws_lb_target_group_example_health_check_protocol_http = "HTTP"
aws_lb_target_group_example_tags_terraform             = "true"
aws_lb_target_group_example_tags_environment           = "dev"

role = "example-role"