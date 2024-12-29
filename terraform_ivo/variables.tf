variable "role_name" {
  type = string
  description = "IAM role name" 
}
variable "policy_name" {
  type = string
  description = "IAM policy name"
}
variable "instance_profile_name" {
  type = string
  description = "EC2 instance profile name"
}
variable "instance_name" {
  type = string
  description = "EC2 Instance name"
}

variable "instance_type" {
  type = string
  description = "EC2 Instance type"
}

variable "key_name" {
  
}

variable "assume_role_policy" {
  type = string
  description = "Define who can use the permissions"
  default = null
}

variable "aws_iam_role_policy" {
  type = string
  description = "Define the inline policy"
  default = null
}


####### VPC Variables 
variable "region" {
  type = string
  description = "Define the aws region"
  default = "us-east-2"
}

variable "bi1" {
  type = string
  description = "Define the aws Availability zone"
  default = "us-east-2a"
}

variable "bi2" {
  type = string
  description = "Define the aws Availability zone"
  default = "us-east-2b"
}

variable "aws_vpc_name" {
  type = string
  description = "Define the vpc name"
  # default = "ivo_vpc"
}

variable "cidr_block_vpc" {
  type = string
  description = "Define the vpc cidr block"
  default = "10.0.0.0/8"
}

variable "instance_tenancy" {
  type = string
  default = "default"
}

variable "cidr_block_public_subnet1" {
  type = string
  default = "10.0.1.0/24"
}

variable "name_pub_subnet1" {
  type = string
  default = "public-subnet-1"
}

variable "cidr_block_public_subnet2" {
  type = string
  default = "10.0.3.0/24"
}

variable "name_pub_subnet2" {
  type = string
  default = "public-subnet-2"
}

variable "name_igw" {
  type = string
  default = "internet-gateway"
}

variable "cidr_block_route_table" {
  type = string
  default = "0.0.0.0/0"
}

variable "route_table_name" {
  type = string
  default = "bakor_route_table"
}

variable "nat_gateway_1_name" {
  type = string
  default = "Nat Gateway 1"
}

variable "nat_gateway_2_name" {
  type = string
  default = "Nat Gateway 2"
}
