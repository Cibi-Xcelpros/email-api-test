provider "null" {}

variable "env" {
  default = {}
}

resource "null_resource" "send_email" {
  provisioner "local-exec" {
    environment = {
      EMAIL_API_URL = lookup(var.env, "EMAIL_API_URL", "127.0.0.1")
    }
    command = <<EOT
        curl -X POST "http://${EMAIL_API_URL}:2222/sendemail?tenant_name=${var.tenant_name}&subdomin=${var.sub_domain_name}&git_branch=${var.git_branch}&to_email_id=${var.email_id_notification}"
      EOT
  }
}
