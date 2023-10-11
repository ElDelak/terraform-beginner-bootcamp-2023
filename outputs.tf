output "bucket_name" {
  description = "Bucket name for a static web site hosting"
  value = module.home_game.bucket_name
}

output "s3_website_endpoint" {
  description = "s3 Static Website hosting endpoint"
  value = module.home_game.website_endpoint
}

output "cloudfront_url" {
  description = "The cloudfront distribution domain name"
  value = module.home_game.domain_name
} 