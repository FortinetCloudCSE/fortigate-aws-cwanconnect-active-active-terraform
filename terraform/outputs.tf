output "fgt_login_info" {
  value = <<-FGTLOGIN
# fgt username: admin
# fgt1 initial password: ${module.fgt-cwan.fgt1_id}
# fgt2 initial password: ${module.fgt-cwan.fgt2_id}
# fgt1 login url: https://${module.fgt-cwan.fgt1_eip}
# fgt2 login url: https://${module.fgt-cwan.fgt2_eip}
FGTLOGIN
}

output "cwan_new" {
  value = var.cwan_creation == "yes" ? (
    <<-CWANNEW
# cwan id: ${module.cloud-wan[0].cwan_id}
# cwan segment key: segment
# cwan segment values = inspection, production, development
CWANNEW
  ) : ""
}

output "cwan_existing" {
  value = var.cwan_creation == "no" ? (
    <<-CWANEXISTING
# cwan id: var.cwan_existing_id
# cwan segment key: var.cwan_existing_segment_key
# cwan segment value = var.cwan_existing_segment_value
CWANEXISTING
  ) : ""
}