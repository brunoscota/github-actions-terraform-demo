provider "random" {
}

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

terraform {
  backend "azurerm" {
    storage_account_name = "daczxcase3asd"
    container_name       = "state"
    key                  = "terraform.tfstate"
    sas_token            = "?sv=2020-08-04&ss=bfqt&srt=sco&sp=rwdlacupitfx&se=2022-01-28T09:33:37Z&st=2022-01-28T01:33:37Z&spr=https&sig=UHhmmqAVsEtQokf7IhKK591GeDbp%2F8vz%2F0%2F1Boqd9eg%3D"
  }
}

output "random_string" {
  value = random_string.random.id
}
