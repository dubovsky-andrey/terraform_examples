# Uncommend to set up default values

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  #default     = "us-east-1"
}

variable "owner" {
  description = "Owner of resource"
}

variable "project_name" {
  description = "project_name"
}

variable "web_ingress_ports" {
  type        = list(number)
  description = " List of Ingress ports"
}

variable "web_egress_ports" {
  type        = list(number)
  description = "List of egress ports"
}

variable "cidr_blocks" {
  type        = list(string)
  description = "range for all ip adresses"
  #default =  "0.0.0.0/0"
}
