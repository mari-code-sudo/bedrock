
 variable "bedrock_custom_model" {
  description = "list of bedrock custom model"
  type = list(object({
  model_name  = string
  model_id    = string
  model_version= string
  endpoint_url=string
  }))   
 }

  variable "itaap_model_serve_api_scope" {
    description = "itaap model serve api"
    type = string
    
  }

  variable "itaap_base_api_url" {
    description = "itapp base api"
    type = string
    
  }