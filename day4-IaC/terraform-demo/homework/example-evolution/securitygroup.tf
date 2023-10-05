resource "aws_security_group" "myinstance" {
  vpc_id      = aws_vpc.main.id
  name        = "myinstance"
  description = "security group for my instance"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    ##########Level Charmeleon : EMPC_CHECK : Replace the cidr block here with the right value##########
    cidr_blocks = ["103.224.35.185/32"]
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    self = true
  }

  tags = {
    Name = "myinstance"
  }
}

resource "aws_security_group" "elb-securitygroup" {
  vpc_id      = aws_vpc.main.id
  name        = "elb"
  description = "security group for load balancer"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    ##########Level Charmeleon : EMPC_CHECK : Replace the cidr block here with the right value##########
    self = true
  }
  tags = {
    Name = "elb"
  }
}