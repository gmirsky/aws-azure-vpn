#tfsec:ignore:aws-iam-no-policy-wildcards
resource "aws_iam_role_policy" "this" {
  name   = "${var.aws_cloudwatch_log_group_name}_policy"
  role   = aws_iam_role.this.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
#
