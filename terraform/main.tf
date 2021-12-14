module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cloudncloud5@gmail.com"
    AccountName               = "BusinessA"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "cloudncloud4@gmail.com"
    SSOUserFirstName          = "Faslu"
    SSOUserLastName           = "Rahman"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "BusinessA"
}
module "BusinessB" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cloudncloud6@gmail.com"
    AccountName               = "Business-B-Prod"
    ManagedOrganizationalUnit = "BusinessB-OU"
    SSOUserEmail              = "cloudncloud4@gmail.com"
    SSOUserFirstName          = "Faslu"
    SSOUserLastName           = "Rahman"
  }

  account_tags = {
    "Learn Tutorial" = "Business-B"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "nprod"
  }

  account_customizations_name = "BusinessB-Prod"
}