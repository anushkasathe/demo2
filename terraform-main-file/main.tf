terraform {

  cloud {
    organization = "genesys-org"

   workspaces {
      name = "myspaceAnushka"
    }
  }

  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
  oauthclient_id     = "339f87f2-1ad0-4bc0-a6b7-96f467852143"
  oauthclient_secret = "YEI8lcO3YEaCgHkyxMOoRKC8Dft-w7c6v9Gv9bv687Q"
  aws_region = "us-east-1"
}

resource "genesyscloud_flow" "flow" {  
filepath = "https://bitbucket.org/anushkasathe/automatedflows/raw/4e6e66efeac10926291bc07991b4ba180c31a6d9/JSON_FLOW_1.yaml"
  substitutions = {
    person_name         = "Add your name"
  }
}
       