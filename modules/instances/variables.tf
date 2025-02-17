variable "ami" {
  description = "インスタンスに使用するAMI ID"
  type        = string
}

variable "instance_type" {
  description = "インスタンスのタイプ"
  type        = string
}

variable "availability_zone" {
  description = "使用するアベイラビリティゾーン"
  type        = string
}

variable "public_key_name" {
  description = "Webサーバー用キーペア名"
  type        = string
}

variable "private_key_name" {
  description = "DBサーバー用キーペア名"
  type        = string
}

variable "public_subnet_id" {
  description = "Webサーバーを配置するパブリックサブネットのID"
  type        = string
}

variable "private_subnet_id" {
  description = "DBサーバーを配置するプライベートサブネットのID"
  type        = string
}

variable "web_sg_id" {
  description = "Webサーバーに適用するセキュリティグループID"
  type        = string
}

variable "db_sg_id" {
  description = "DBサーバーに適用するセキュリティグループID"
  type        = string
}

variable "web_instance_private_ip" {
  description = "WebサーバーのプライベートIP"
  type        = string
}

variable "db_instance_private_ip" {
  description = "DBサーバーのプライベートIP"
  type        = string
}
