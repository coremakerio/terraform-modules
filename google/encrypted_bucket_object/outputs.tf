output bucket {
  description = "The google storage bucket where the result will be stored."
  value = "${var.bucket}"
}

output "bucket_object_name" {
  description = "The name of the result object to store in google storage bucket."
  value = "${var.bucket_object_name}"
}



