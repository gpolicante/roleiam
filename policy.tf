data "aws_iam_policy_document" "role_create_infracloudops" {




statement {
        effect = var.effect
        actions = [
            "sts:AssumeRole",
        ]


        principals {
            type = "Service"
            identifiers = var.role_service
        }
    }




}

data "aws_iam_policy_document" "policy_create_infracloudops" {

statement {
    actions   = var.role_permission
    resources = var.policy_limits_resource
  }


}
