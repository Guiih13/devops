variable "names" {
    default = ["leticia", "guilherme", "camila", "jane"]
}

# Resource IAM User
resource "aws_iam_user" "users" {
  #count = length(var.names)
  #name  = var.names[count.index]
  for_each = toset(var.names)
  name = each.value
  }
