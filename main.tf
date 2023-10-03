terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
}

provider "terratowns" {
  endpoint = "http://localhost:4567"
  user_uuid="e328f4ab-b99f-421c-84c9-4ccea042c7d1" 
  token="9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
}

/* module  "terrahouse_aws"{
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
  content_version = var.content_version
} */

resource "terratown_home" "home"{
  name = "How to play arcanum in 2023"
  description = <<DESCRIPTION
  description of arcanum
  DESCRIPTION
  #domain_name= module.terrahouse_aws.cloudfront_url
  domain_name= "rgrd3t54dg.cloudfront.net"
  town= "gamers-gratto"
  content_version= "1"
}
