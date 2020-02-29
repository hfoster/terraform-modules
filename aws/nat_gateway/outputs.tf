output "nat_gateway_ids" {
  value = aws_nat_gateway.default.*.id
}
