terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  cloud {
    organization = "mabrouk"
    workspaces {
      name = "terra-house-1"
    }
  }
}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid=var.teacherseat_user_uuid
  token=var.terratowns_access_token
}
/* 
module "home_game" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  content_version = var.game.content_version
  public_path = var.game.public_path
}

resource "terratowns_home" "home_game" {
  name = "How to play arcanum in 2023"
  description = <<DESCRIPTION
  description of arcanum
  DESCRIPTION
  domain_name= module.home_game.domain_name
  town= "missingo"
  content_version= var.game.content_version
}

module "home_payday" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.payday.public_path
  content_version = var.payday.content_version
}

resource "terratowns_home" "home_payday" {
  name = "making you Payday bar"
  description = <<DESCRIPTION
  description payday bar
  DESCRIPTION
  domain_name= module.home_payday.domain_name
  town= "missingo"
  content_version= var.payday.content_version
}
 */
module "home_lablabi" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.lablabi.public_path
  content_version = var.lablabi.content_version
}

resource "terratowns_home" "home_lablabi" {
  name = "Lablabi recipe"
  description = <<DESCRIPTION
  Lablabi is a popular Tunisian dish. It’s a chickpeas soup served as a breakfast street food during cold days.
  DESCRIPTION
  domain_name= module.home_lablabi.domain_name
  town= "cooker-cove"
  content_version= var.lablabi.content_version
}
