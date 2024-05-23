resource "null_resource" "send_email" {
  provisioner "local-exec" {
    command = <<EOT
        curl -X POST "http://${var.email_service_ip}:2222/sendemail?tenant_name=${var.tenant_name}&subdomin=${var.sub_domain_name}&git_branch=${var.git_branch}&to_email_id=${var.email_id_notification}"
      EOT
  }
}
