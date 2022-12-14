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
filepath = "https://bitbucket.org/anushkasathe/automatedflows/raw/8bc0c273baafb854af1ed81cb64a75724aedd292/botFlow.yaml"
}
       