environment = "dev-test"
program     = "aifoundation"
account_id  = "503561426655"


aws_region = "eu-west-1"


itaap_base_api_url                 = "https://dev.apps.api.it.philips.com"
itaap_model_serve_api_scope        = "api://philips-ai-token-management-api-non-prod/.default"

bedrock_custom_model = [
  {
    model_name    = "Model1"
    model_id      = "12345"
    model_version = "v1.0"
    endpoint_url  = "https://example.com/api/v1"
  },
  {
    model_name    = "Model2"
    model_id      = "67890"
    model_version = "v2.0"
    endpoint_url  = "https://example.com/api/v2"
  }
]
