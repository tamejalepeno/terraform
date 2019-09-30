output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "public_subnet_id" {
  value = "${aws_subnet.public_subnet.id}"
}

output "private_subnet_id" {
  value = "${aws_subnet.private_subnet.id}"
}

output "hasync_subnet_id" {
  value = "${aws_subnet.hasync_subnet.id}"
}

output "hamgmt_subnet_id" {
  value = "${aws_subnet.hamgmt_subnet.id}"
}

output "public_subnet_id_az2" {
  value = "${aws_subnet.public_subnet_az2.id}"
}

output "private_subnet_id_az2" {
  value = "${aws_subnet.private_subnet_az2.id}"
}

output "hasync_subnet_id_az2" {
  value = "${aws_subnet.hasync_subnet_az2.id}"
}

output "hamgmt_subnet_id_az2" {
  value = "${aws_subnet.hamgmt_subnet_az2.id}"
}

output "private_rt_id" {
  value = "${aws_route_table.private_rt.id}"
}