resource "octopusdeploy_variable" "tblnameTF" {
  name = "test1"
  value = var.octopus_tblname
  description = "Table name for SQL query.  This is managed by the Octopus Terraform Provider.  Please do not make changes in   the UI, update the TF file instead."
  
}

