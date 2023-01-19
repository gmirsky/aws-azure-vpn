resource "aws_iam_instance_profile" "this" {
  name = "test_profile"
  role = aws_iam_role.ec2.name
  tags = var.aws_user_tags
}
#