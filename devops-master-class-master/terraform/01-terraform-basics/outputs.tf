output "my_s3_bucket_versioning" {
    value = aws_s3_bucket.bucket_guiimartinss_v1.versioning[0].enabled
}

output "my_s3_bucket_complete_details" {
    value = aws_s3_bucket.bucket_guiimartinss_v1
}

output "iam_user_completed_details" {
    value = aws_iam_user.command_line_user
}