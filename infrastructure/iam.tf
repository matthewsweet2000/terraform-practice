resource "aws_iam_role" "admin" {
  name = "terraform-admin"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "ec2.amazonaws.com"
        ]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "admin-policy-attachment" {
    role = aws_iam_role.admin.name
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
