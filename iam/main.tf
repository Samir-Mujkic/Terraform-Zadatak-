# ROLE FOR S3
resource "aws_iam_role" "example-role" {
    name = "example-role"
    

    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow"
                Principal = {
                    Service ="ec2.amazonaws.com"
                }
                Action = "sts:AssumeRole"
            }
        ]
    })
  
}
# POLICY FOR S3
resource "aws_iam_policy" "example_policy" {
    name = "example-policy"
    description = "Example policy"

    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow"
                Action = [
                    "s3:GetObject",
                    "s3:ListBucket"
                ]
                Resource = [
                    "arn:aws:s3:::${var.s_bucket_name}",
                    "arn:aws:s3:::${var.s_bucket_name}"
                ]
            }
        ]
    })
  
}
# Povezali
resource "aws_iam_role_policy_attachment" "example_policy_attachment" {
    policy_arn = aws_iam_policy.example_policy.arn
    role       = aws_iam_role.example-role.name
  
}



# module "s3" {
#     source = "../s3"
#     s3_bucket_name = var.s3_bucket_name
  
# }