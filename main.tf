##################################################################################
# PROVIDERS
##################################################################################

terraform {
  required_providers {
    octopusdeploy = {
      source = "OctopusDeployLabs/octopusdeploy"
      version = ">= 0.7.64" # example: 0.7.62
    }
  }
}

data "octopusdeploy_space" "space" {
  provider = octopusdeploy.unscoped
  name     = "SandBox"
}

provider "octopusdeploy" {
  # configuration options
  address    = "https://taaoctodeploy.wolterskluwer.com/"     # (required; string) the service endpoint of the Octopus REST API
  api_key    = "API-ACI6EEPLFRY00OB3IT8GOWFEPNGXKPSF"               # (required; string) the API key to use with the Octopus REST API
  space_id   = data.octopusdeploy_space.space.id # (optional; string) the space ID in Octopus Deploy
}
