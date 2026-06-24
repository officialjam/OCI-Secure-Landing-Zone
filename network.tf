resource "oci_core_vcn" "main" {
  compartment_id = var.compartment_ocid
  cidr_block     = "10.0.0.0/16"
  display_name   = "secure-vcn"
  dns_label      = "securevcn"
}

resource "oci_core_subnet" "public" {
  compartment_id            = var.compartment_ocid
  vcn_id                    = oci_core_vcn.main.id
  cidr_block                = "10.0.1.0/24"
  display_name              = "public-subnet"
  prohibit_public_ip_on_vnic = false
  dns_label                 = "public"
}

resource "oci_core_subnet" "private" {
  compartment_id            = var.compartment_ocid
  vcn_id                    = oci_core_vcn.main.id
  cidr_block                = "10.0.2.0/24"
  display_name              = "private-subnet"
  prohibit_public_ip_on_vnic = true
  dns_label                 = "private"
}
