output "sg_id" {
  value = resource.aws_security_group.tf_sg.id
  depends_on = [
    resource.aws_security_group.tf_sg
  ]
}