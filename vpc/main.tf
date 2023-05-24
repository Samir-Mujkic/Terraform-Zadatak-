# VPC
resource "aws_vpc" "main" {

  cidr_block = var.vpc-cidr

  tags = {
    Name = var.aws_vpc_main_tags_name
  }
}
# PUBLIC SUBNET
resource "aws_subnet" "public_subnets" {
  count             = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "Public Subnet ${count.index + 1}"
  }

}

# PRIVATE SUBNET

resource "aws_subnet" "private_subnets" {
  count             = length(var.private_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    "Name" = "Private Subnet ${count.index + 1}"
  }

}

# Internet Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    "Name" = var.aws_internet_gateway_gw_tags_name
  }

}
# route table for public subnet and int gat 
resource "aws_route_table" "second_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.aws_route_table_second_rt_cidr_block
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    "Name" = var.aws_route_table_second_rt_tags_name
  }

}



# associate rt - public subnet

resource "aws_route_table_association" "public_subnet_asso" {
  count          = length(var.public_subnet_cidrs)
  subnet_id      = element(aws_subnet.public_subnets[*].id, count.index)
  route_table_id = aws_route_table.second_rt.id
}

