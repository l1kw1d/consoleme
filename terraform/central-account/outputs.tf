output "public_fqdn" {
  description = "The public address of the EC2 instance running the application."
  value       = aws_lb.public-to-private-lb.dns_name
}

output "zREADME" {
  value = <<README
# ------------------------------------------------------------------------------
# ConsoleMe Demo Guide
# ------------------------------------------------------------------------------

If you're following the Terraform demo environment and your Terraform apply was
successful, you can wait for a few minutes and then visit the ConsoleMe dashboard
at the following URL:

$ http://${aws_lb.public-to-private-lb.dns_name}:8081

If you want to access the server over SSH, consider using Systems Manager or a VPN in.

If you want to experiment with the ConsoleMe config, you can find the config files at the path:

$ cd /apps/consoleme/example_config/

README
}