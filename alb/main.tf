resource "aws_lb" "example" {
  name               = var.aws_lb_example_name
  internal           = var.aws_lb_example_internal_false
  load_balancer_type = var.aws_lb_example_load_balancer_type
  subnets            = var.subnets
  security_groups    = [aws_security_group.alb_sg.id]
  
}

resource "aws_security_group" "alb_sg" {
  name_prefix = var.aws_security_group_alb_sg_name_prefix
  description = var.aws_security_group_alb_sg_description
  vpc_id      = var.aws_lb_example_vpc_identification

  ingress {
    from_port   = var.aws_security_group_alb_sg_ingress_from_port80
    to_port     = var.aws_security_group_alb_sg_ingress_to_port80
    protocol    = var.aws_security_group_alb_sg_ingress_protocol_tcp
    cidr_blocks = var.aws_security_group_alb_sg_ingress_cidr_blocks
  }

 
 ingress {
    from_port   = var.aws_security_group_alb_sg_ingress_from_port443
    to_port     = var.aws_security_group_alb_sg_ingress_to_port443
    protocol    = var.aws_security_group_alb_sg_ingress_protocol_tcp
    cidr_blocks = var.aws_security_group_alb_sg_ingress_cidr_blocks
  }

  tags = {
    Name = var.aws_security_group_alb_sg_tags_name
  }
}

# module "vpc" {
#     source = "../vpc"
#     aws_internet_gateway_gw_tags_name = var.aws_internet_gateway_gw_tags_name
#     aws_route_table_second_rt_cidr_block = var.aws_route_table_second_rt_cidr_block
#     aws_route_table_second_rt_tags_name = var.aws_route_table_second_rt_tags_name
#     aws_vpc_main_tags_name = var.aws_vpc_main_tags_name
  
# }


resource "aws_lb_listener" "http" {
  load_balancer_arn = var.load_balancer_arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = var.target_group_arn
    type             = "forward"
  }
}

# resource "aws_lb_target_group_attachment" "example" {
#   target_group_arn = var.target_group_arn
#   target_id        = "i-0cc288743bd461dc9"
#   port             = 80
# }


