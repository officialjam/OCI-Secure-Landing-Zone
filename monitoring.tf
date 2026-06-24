resource "oci_logging_log_group" "security_logs" {
  compartment_id = var.compartment_ocid
  display_name   = "security-log-group"
}
