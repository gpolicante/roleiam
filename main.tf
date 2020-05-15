resource "aws_iam_role"  "role_infracloud" { 
name = var.name_role 
permissions_boundary = var.boundary_role
assume_role_policy = data.aws_iam_policy_document.role_create_infracloudops.json

tags = var.tags


}

resource "aws_iam_policy" "policy" {
  name        = var.name_policy
  
  policy = data.aws_iam_policy_document.policy_create_infracloudops.json


} 




resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.role_infracloud.name
  policy_arn = aws_iam_policy.policy.arn
  
}