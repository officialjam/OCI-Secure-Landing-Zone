resource "oci_kms_vault" "security_vault" {
  compartment_id = var.compartment_ocid
  display_name   = "security-vault"
  vault_type     = "DEFAULT"
}
