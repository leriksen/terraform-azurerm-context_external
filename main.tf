data "http" "config" {
  url = "https://raw.githubusercontent.com/leriksen/context-data/v1.1/data.json"
}

locals {
  data =  jsondecode(data.http.config.response_body)
}

output "appid" {
  value = local.data.internal.appid
}

output "project_code" {
  value = local.data.project_code
}

output "prefixes" {
  value = local.data.prefixes
}

output "cleanup" {
  value = local.data.cleanup
}