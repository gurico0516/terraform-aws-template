resource "aws_security_group" "db" {
  vpc_id      = var.vpc_id
  name        = "DB-SG"
  description = "DB用セキュリティグループ"

  ingress {
    cidr_blocks = ["10.0.1.0/24"]
    from_port   = -1
    protocol    = "icmp"
    to_port     = -1
  }

  ingress {
    cidr_blocks = ["10.0.1.10/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["10.0.1.10/32"]
    from_port   = 3306
    protocol    = "tcp"
    to_port     = 3306
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}

resource "aws_security_group" "web" {
  vpc_id      = var.vpc_id
  name        = "WEB-SG"
  description = "Web用セキュリティグループ"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = -1
    protocol    = "icmp"
    to_port     = -1
  }

  ingress {
    cidr_blocks = ["116.222.47.170/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["116.222.47.170/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}
