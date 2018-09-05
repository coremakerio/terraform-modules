data "external" "encrypted_value" {
  program = ["${path.module}/scripts/encrypt_file.sh"]

  query = {
    project = "${var.project_id}"
    dest    = "outputs/encrypted_bucket_object/${var.bucket}/${var.bucket_object_name}"
    data    = "${var.data}"
    keyring = "${var.kms_keyring_name}"
    key     = "${var.kms_key_name}"
    b64in   = "${var.data_is_base64}"
  }
}

resource "google_storage_bucket_object" "encrypted_value_object" {
  name         = "${var.bucket_object_name}"
  content      = "${file(data.external.encrypted_value.result["file"])}"
  content_type = "application/octet-stream"
  bucket       = "${var.bucket}"
}