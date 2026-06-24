resource "oci_identity_policy" "landing_zone_policy" {

  compartment_id = var.compartment_ocid

  name        = "landing-zone-policy"

  description = "Policy for OCI Secure Landing Zone"

  statements = [
    "Allow group Administrators to manage all-resources in tenancy"
  ]
}

