variable "var_user" {
    type = string #any, number, bool, list, map, set, object, tuple
    default = "iam_user_"
}


# Resource IAM User
resource "aws_iam_user" "users" {
  count = 2
  name  = "${var.var_user}${count.index}"
}
