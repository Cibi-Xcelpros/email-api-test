resource "null_resource" "send_email" {
  provisioner "local-exec" {
    command = "curl 'http://127.0.0.1:3000/sendemail?tenant_name=Tenant04&subdomin=domain&git_branch=git-branch&to_email_id=cibi.chakravarthi@xcelpros.com'"
  }
}
