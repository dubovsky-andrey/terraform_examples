output "sg_id" {
  description = "ID of the created SG"
  value       = aws_security_group.xfusion_sg.id
}

output "sg_arn" {
  description = "ARN of the created SG"
  value       = aws_security_group.xfusion_sg.arn
}

output "default_vpc_it" {
  description = "Default vpc id"
  value       = data.aws_vpc.default.id
}