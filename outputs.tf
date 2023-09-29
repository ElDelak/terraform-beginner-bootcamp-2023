output "bucket_name" {
  description = "Bucket name for a static web site hosting"
  value = module.terrahouse_aws.bucket_name
}

output "s3_website_endpoint" {
  description = "s3 Static Website hosting endpoint"
  value = module.terrahouse_aws.website_endpoint
}