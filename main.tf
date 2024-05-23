resource "null_resource" "send_email" {
  provisioner "local-exec" {
    command = <<EOT
        curl -X POST "http://${var.env["EMAIL_API_URL"]}:2222/sendemail" \
             -d '{"api_key": "your_api_key", "tenant_name": "${var.tenant_name}", "subdomain": "${var.sub_domain_name}", "git_branch": "${var.git_branch}", "to_email_id": "${var.email_id_notification}"}' \
             -H "Content-Type: application/json"
      EOT
  }
}
