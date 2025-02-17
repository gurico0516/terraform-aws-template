variable "vpc_cidr" {
  description = "VPCのCIDRブロック"
  default     = "10.0.0.0/16"
}

variable "availability_zone" {
  description = "使用するアベイラビリティゾーン"
  default     = "us-east-1a"
}

variable "public_subnet_cidr" {
  description = "パブリックサブネットのCIDRブロック"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "プライベートサブネットのCIDRブロック"
  default     = "10.0.2.0/24"
}

variable "nat_allocation_id" {
  description = "NAT Gateway用EIPのAllocation ID"
  default     = "eipalloc-0c850daf4df341ded"
}

variable "nat_private_ip" {
  description = "NAT GatewayのプライベートIP"
  default     = "10.0.1.33"
}

variable "igw_id" {
  description = "パブリックルートテーブル用のInternet Gateway ID"
  default     = "igw-0aa012fa015757436"
}

variable "ami" {
  description = "インスタンスに使用するAMI ID"
  default     = "ami-053a45fff0a704a47"
}

variable "instance_type" {
  description = "インスタンスのタイプ"
  default     = "t2.micro"
}

variable "public_key_name" {
  description = "Webサーバー用のキーペア名"
  default     = "RSA"
}

variable "private_key_name" {
  description = "DBサーバー用のキーペア名"
  default     = "PrivateRSA"
}

variable "web_instance_private_ip" {
  description = "WebサーバーのプライベートIP"
  default     = "10.0.1.10"
}

variable "db_instance_private_ip" {
  description = "DBサーバーのプライベートIP"
  default     = "10.0.2.10"
}
