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

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = string
  default = "Bakor_ivo"
}

variable "key_name" {
    type = string
    
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}
