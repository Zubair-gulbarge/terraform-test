resource "aws_s3_bucket" "finance" {
  bucket = "finance-20242025"
  tags = {
    Description = "Finance and Payroll"
  }
}

resource "aws_s3_bucket_object" "finance-2024" {
  content = "/root/finance/finance-2024.doc"
  key = "finance-2024.doc"
  bucket = aws_s3_bucket.finance.id
}

data "aws_iam_group" "finance-data" {
  group_name = "finance-analysts"
}

resource "aws_s3_bucket_policy" "finance-policy" {
  bucket = aws_s3_bucket.finance.id
  policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Action": "*",
                "Effect": "Allow",
                "Resource": "arn:aws:s3:::<<bucket-name>>/*",
                "Principal": {
                    "AWS": [
                        "<< arn >>"
                    ]
                }
            }
        ]
    }
  EOF
}