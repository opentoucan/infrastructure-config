data "terraform_remote_state" "rs_opentoucan" {
  backend = "remote"

  config = {
    hostname = "sillock.scalr.io"
    organization = "env-v0o8kh26r9qe4mqfe"
    workspaces = {
      name = "opentoucan"
    }
  }
}