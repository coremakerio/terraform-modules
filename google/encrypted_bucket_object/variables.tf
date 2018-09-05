variable project_id {
  description = "The project ID to add the IAM bindings for the service account to"
}

variable kms_keyring_name {
  description = "The name of the Cloud KMS KeyRing for asset encryption"
}

variable kms_key_name {
  description = "The name of the Cloud KMS Key used for asset encryption/decryption"
}

variable bucket {
  description = "The google storage bucket where the result will be stored."
}

variable "bucket_object_name" {
  description = "The name of the result object to store in google storage bucket."
}

variable "data" {
  description = "Data to encrypt and store."
}

variable "data_is_base64" {
  description = "boolean indicating if data is encrypted in base64"
  default = "false"
}



