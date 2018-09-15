output "main_vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "public_subnet_ids" {
  value = ["${aws_subnet.public.*.id}"]
}

output "private_subnet_ids" {
  value = ["${aws_subnet.private.*.id}"]
}

output "elb_security_group_id" {
  value = "${aws_security_group.elb_security_group.id}"
}

output "web_security_group_id" {
  value = "${aws_security_group.web.id}"
}

output "ssh_security_group_id" {
  value = "${aws_security_group.ssh.id}"
}
