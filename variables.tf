variable "email_id_notification" {
  description = "Enter the desired Email address to recive notification about new tenant launch"
  type = string
}
variable "email_service_ip" {
  description = "Enter the ip address of the email service"
  type = string
}
variable "sub_domain_name" {
  description = "Enter the your desired subdomain add, Will produce <subdomain>.weberp.xcelpros.com"
  type = string
}
variable "git_branch" {
  description = "Deployment branch"
  type = string
}
variable "tenant_name" {
  description = "Name of the Tenant"
  type = string
}
