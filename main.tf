resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = var.dns_support
  enable_dns_hostnames = var.dns_host_names
  tags = {
    "Name" = var.name
  }
}


resource "aws_subnet" "public" {

  cidr_block = var.subnet_cidr
  vpc_id = aws_vpc.main.id
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    "Name" = "${var.name}-public"
  }
}

resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.main.id
  tags = {
    "Name" = "name-ig"
  }
}

resource "aws_route" "pulic_route" {

  route_table_id              = aws_vpc.main.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.ig.id
}

