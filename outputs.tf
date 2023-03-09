output "vpc_id" {
  description = "VPC ID"
  value       = ["${aws_vpc.default.id}"]
}

output "subnet_id_1" {
  description = "List of IDs of instances"
  value       = ["${aws_subnet.subnet-1-public.id}"]
}

output "subnet_id_2" {
  description = "List of IDs of instances"
  value       = ["${aws_subnet.subnet-2-public.id}"]
}

output "subnet_id_3" {
  description = "List of IDs of instances"
  value       = ["${aws_subnet.subnet-3-public.id}"]
}

