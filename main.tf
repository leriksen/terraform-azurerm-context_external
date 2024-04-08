data "http" "config" {
  url = "https://raw.githubusercontent.com/leriksen/context-data/v1.0/data.json"
}

locals {
  data =  jsondecode(data.http.config.body)
}

output "appid" {
  value = local.data.appid
}

output "project_code" {
  value = local.data.project_code
}

output "prefixes" {
  value = local.data.prefixes
}