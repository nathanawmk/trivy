
resource "aws_security_group_rule" "my-rule" {
  type        = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_alb_listener" "my-alb-listener" {
  port     = "80"
  protocol = "HTTP"
  tags = {
    yor_trace = "7cdc22f6-c0c3-4e31-b2f1-98ace440c8a8"
  }
}

resource "aws_db_security_group" "my-group" {

  tags = {
    yor_trace = "d8a30e82-699a-4563-b48f-21c80232106a"
  }
}

resource "azurerm_managed_disk" "source" {
  encryption_settings {
    enabled = var.enableEncryption
  }
  tags = {
    yor_trace = "d93485bb-641b-4ff8-86b2-7487c3b445fe"
  }
}

resource "aws_api_gateway_domain_name" "missing_security_policy" {
  tags = {
    yor_trace = "8c57c12e-7e9f-4c31-a361-e61fb9616efe"
  }
}

resource "aws_api_gateway_domain_name" "empty_security_policy" {
  security_policy = ""
  tags = {
    yor_trace = "24bf4a48-4679-400f-9b6b-46147ac6b4b7"
  }
}

resource "aws_api_gateway_domain_name" "outdated_security_policy" {
  security_policy = "TLS_1_0"
  tags = {
    yor_trace = "bf6e6592-fc77-4e8b-b279-6f578f4f8ed1"
  }
}

resource "aws_api_gateway_domain_name" "valid_security_policy" {
  security_policy = "TLS_1_2"
  tags = {
    yor_trace = "0535e24a-4467-4a0f-bbaf-caba86e4d2bf"
  }
}
