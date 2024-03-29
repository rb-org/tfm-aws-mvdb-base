variable "managed_policy_arns" {
  type = "list"
  default = [
    "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM",
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
    "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",
    "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy",
    "arn:aws:iam::aws:policy/AmazonSSMFullAccess",

  ]
  description = "Managed Policy Arns"
}

variable "os" {
  description = "windows_2019, windows_2016, amz_linux2"
  default     = "amz_linux2"
}

variable "instance_type" {
  type = "map"
  default = {
    dev = "t3.small"
    tst = "t3.medium"
    prd = "t3.medium"
  }
}

variable "user_data" {
  default = "userdata_amz.sh"
}

variable "allowed_ips" {
  type = "list"
}

variable "instance_count" {
  default = 0
}

variable "public_ip" {
  description = "Assign a public ip true/false"
  default     = "true"
}

variable "public_subnets" {
  type = "list"
}

variable "name" {
  default = "ssh"
}

variable "vpc_id" {}

variable "key_pair" {
  type = "map"
}
variable "name_prefix" {

}

variable "default_tags" {
  default = "map"
}

variable "log_group_retention" {
  default = 3
}
