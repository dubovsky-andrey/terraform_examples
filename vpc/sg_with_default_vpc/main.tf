# Create Subnet with name xfusion_sg. In default VPC with Open port 22 50 52 443 for "0.0.0.0/0" and add tags for subnet

resource "aws_security_group" "xfusion_sg" {
  name        = "xfusion-sg"
  description = "Security group for example App Servers"
  vpc_id      = data.aws_vpc.default.id


  dynamic "ingress" {
    for_each = var.web_ingress_ports
    content {
      protocol    = "tcp"
      from_port   = ingress.value
      to_port     = ingress.value
      cidr_blocks = var.cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = var.web_egress_ports
    content {
      protocol    = "tcp"
      from_port   = egress.value
      to_port     = egress.value
      cidr_blocks = var.cidr_blocks
    }
  }

  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Name  = var.project_name
    Owner = var.owner
  }
}