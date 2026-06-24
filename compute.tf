resource "oci_core_instance" "app_server" {
  availability_domain = "AD-1"
  compartment_id      = var.compartment_ocid
  shape               = "VM.Standard.E4.Flex"
  display_name        = "app-server"
}
