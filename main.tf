resource "null_resource" "send_email" {
  provisioner "local-exec" {
    command = "curl '${var.EMAIL_API_URL}:2222/sendemail?tenant_name=Tenant04&subdomin=domain&git_branch=git-branch&to_email_id=cibi.chakravarthi@xcelpros.com'"
  }
}
