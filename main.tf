terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
}

provider "terratowns" {
  endpoint = "https://terratowns.cloud/api"
  user_uuid="c8482a6d-a9a7-4da0-8932-97d34bfdf630" 
  token="5c86f956-2d4b-4244-a3a6-bb1f0978035c"
}

/* module  "terrahouse_aws"{
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
  content_version = var.content_version
} */

resource "terratowns_home" "home" {
  name = "How to play arcanum in 2023"
  description = <<DESCRIPTION
  description of arcanum
  DESCRIPTION
  #domain_name= module.terrahouse_aws.cloudfront_url
  domain_name= "rgrd3t54dgd.cloudfront.net"
  town= "missingo"
  content_version= "1"
}
