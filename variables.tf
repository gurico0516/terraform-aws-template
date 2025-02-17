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
  type        = string
  # 環境変数 TF_VAR_nat_allocation_id で上書きすることを想定
}

variable "nat_private_ip" {
  description = "NAT GatewayのプライベートIP"
  type        = string
  # 環境変数 TF_VAR_nat_private_ip で上書きすることを想定
}

variable "igw_id" {
  description = "パブリックルートテーブル用のInternet Gateway ID"
  type        = string
  # 環境変数 TF_VAR_igw_id で上書きすることを想定
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
  type        = string
  # 環境変数 TF_VAR_public_key_name で上書きすることを想定
}

variable "private_key_name" {
  description = "DBサーバー用のキーペア名"
  type        = string
  # 環境変数 TF_VAR_private_key_name で上書きすることを想定
}

variable "web_instance_private_ip" {
  description = "WebサーバーのプライベートIP"
  type        = string
  # 環境変数 TF_VAR_web_instance_private_ip で上書きすることを想定
}

variable "db_instance_private_ip" {
  description = "DBサーバーのプライベートIP"
  type        = string
  # 環境変数 TF_VAR_db_instance_private_ip で上書きすることを想定
}
