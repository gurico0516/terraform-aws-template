variable "vpc_cidr" {
  description = "VPCのCIDRブロック"
  type        = string
}

variable "public_subnet_cidr" {
  description = "パブリックサブネットのCIDRブロック"
  type        = string
}

variable "private_subnet_cidr" {
  description = "プライベートサブネットのCIDRブロック"
  type        = string
}

variable "availability_zone" {
  description = "使用するアベイラビリティゾーン"
  type        = string
}

variable "nat_allocation_id" {
  description = "NAT Gateway用EIPのAllocation ID"
  type        = string
}

variable "nat_private_ip" {
  description = "NAT GatewayのプライベートIP"
  type        = string
}

variable "igw_id" {
  description = "パブリックルートテーブル用のInternet Gateway ID"
  type        = string
}
