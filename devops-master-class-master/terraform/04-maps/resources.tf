variable "users" {
  default = {
    leticia : "NovaZelandia",
    guilherme : "Brazil",
    camila : "Australia",
  }
}

# Resource IAM User
resource "aws_iam_user" "my_users" {
  for_each = var.users
  name     = each.key
  tags = {
    country : each.value
  }
}
