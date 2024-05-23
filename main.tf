# resource "null_resource" "send_email" {
#   provisioner "local-exec" {
#     command = "curl '${var.EMAIL_API_URL}:2222/sendemail?tenant_name=Tenant04&subdomin=domain&git_branch=git-branch&to_email_id=cibi.chakravarthi@xcelpros.com'"
#   }
# }

# resource "null_resource" "send_email" {
#   provisioner "local-exec" {
#     command = "curl '${var.EMAIL_API_URL}:2222/ping'"
#   }
# }

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
        curl -X POST "http://${EMAIL_API_URL}:2222/sendemail?tenant_name=Tenant04&subdomin=domain&git_branch=git-branch&to_email_id=cibi.chakravarthi@xcelpros.com"
      EOT
  }
}
