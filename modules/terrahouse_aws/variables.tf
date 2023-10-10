variable "user_uuid"{
    description = "The UUID of the user"
    type = string
    validation {
        condition        = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$", var.user_uuid))
        error_message    = "The user_uuid value is not a valid UUID."
    }
} 

/* variable "bucket_name" {
  description = "Name of the AWS S3 bucket"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9.-]{3,63}$", var.bucket_name))
    error_message = "Invalid bucket name. Bucket names must be between 3 and 63 characters long and can only contain lowercase letters, numbers, hyphens, and periods."
  }
} */

variable "public_path"{
  description = "the path for the public directory"
  type = string

}

variable "content_version" {
  description = "The content version (positive integer starting at 1)"
  type        = number
  validation {
    condition     = var.content_version >= 1 && ceil(var.content_version) == floor(var.content_version)
    error_message = "content_version must be a positive integer starting at 1."
  }
}
