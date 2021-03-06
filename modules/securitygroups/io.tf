# securitygroups io.tf
variable "vpc_id" {}
variable "vpc_cidr" {}
variable "control_cidr" {}

output "master_id" {
  value = "${aws_security_group.k8s-master.id}"
}
output "worker_id" {
  value = "${aws_security_group.k8s-worker.id}"
}
output "edge_node_id" {
  value = "${aws_security_group.k8s-edge-node.id}"
}
