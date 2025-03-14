
provider "aws" {
  region = "eu-west1"
  
}

resource "null_resource" "sync_custom_model" {
  provisioner "local-exec" {
    command = <<EOF
    accessToken=\$(curl -X POST "https://login.microsoftonline.com/\$ARM_TENANT_ID/oauth2/v2.0/token" \
      -d "client_id=\$ARM_CLIENT_ID" \
      -d "scope=${var.itaap_model_serve_api_scope}" \
      -d "client_secret=\$ARM_CLIENT_SECRET" \
      -d "grant_type=client_credentials" | jq -r '.access_token')
 
    if [ -z "\$accessToken" ]; then
      echo "Failed to obtain access token" >&2
      exit 1
    fi
 
    echo "Publishing the deployed models information to the ITaaP AI Foundation Services"
 
    # Encode the custom model data as JSON and send to ITaaP
    curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer \$accessToken" \
      -d '${jsonencode(var.bedrock_custom_model)}' \
      "${var.itaap_base_api_url}/api/philips-ai-master-data/deployments" \
      || { echo "Failed to post custom model data" >&2; exit 1; }
    EOF
  }
}