output "subnet_ids" {
  value = [aws_subnet.default.*.id]
}
