terraform {
  backend "remote" {
    organization = "kkajiura-training"

    workspaces {
      name = "cli-test"
    }
  }
}

provider "vsphere" {
  user           = "Administrator@vsphere.local"
  password       = "Cisco0!234"
  vsphere_server = "10.71.231.207"

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

resource "vsphere_datacenter" "SVC-Datacenter" {
  name = "test-datacenter"
}
