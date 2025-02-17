resource "aws_instance" "web" {
  ami                         = var.ami
  instance_type               = var.instance_type
  availability_zone           = var.availability_zone
  associate_public_ip_address = true
  key_name                    = var.public_key_name
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [var.web_sg_id]
  private_ip                  = var.web_instance_private_ip

  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    iops                  = 3000
    throughput            = 125
    delete_on_termination = true
  }

  tags = {
    Name = "Webサーバー"
  }
}

resource "aws_instance" "db" {
  ami                         = var.ami
  instance_type               = var.instance_type
  availability_zone           = var.availability_zone
  associate_public_ip_address = false
  key_name                    = var.private_key_name
  subnet_id                   = var.private_subnet_id
  vpc_security_group_ids      = [var.db_sg_id]
  private_ip                  = var.db_instance_private_ip

  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    iops                  = 3000
    throughput            = 125
    delete_on_termination = true
  }

  tags = {
    Name = "DBサーバー"
  }
}
