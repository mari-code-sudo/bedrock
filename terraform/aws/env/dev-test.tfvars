environment = "dev-test"
program     = "aifoundation"
account_id  = "503561426655"


aws_region = "eu-west-1"

vpc_availability_zones = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
vpc_cidr_block         = "10.46.200.0/23"
public_subnets         = [{ "newbits" = 5, "netnum" = 0 }]
private_subnets = [{ "newbits" = 3, "netnum" = 1 },
  { "newbits" = 4, "netnum" = 1 },
{ "newbits" = 5, "netnum" = 1 }]
itaap_peering_cidr                 = "10.46.0.0/21"
itaap_peering_account_id           = "762168133611"
itaap_role_name_for_bedrock_access = "itaap--non-prod--AI-FOUNDATION-BEDROCK-ROLE"
federated_admin_arn                = "arn:aws:iam::503561426655:role/aws-reserved/sso.amazonaws.com/eu-west-1/AWSReservedSSO_AWSGIS-Administrator_3ea20b8d47a9f01c"
cicd_ugr                           = "group/cicd"
itaap_base_api_url                 = "https://dev.apps.api.it.philips.com"
itaap_model_serve_api_scope        = "api://philips-ai-token-management-api-non-prod/.default"
itaap_base_api_url                 = "https://dev.apps.api.it.philips.com"
itaap_model_serve_api_scope        = "api://philips-ai-token-management-api-non-prod/.default"