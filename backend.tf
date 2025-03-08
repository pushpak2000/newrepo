terraform {
  backend "remote" {
    organization = "AviPusAdiGar"  # Your Terraform Cloud organization
    workspaces {
      name = "WanttotestendtoendCICD"  # The workspace where the state will be stored
    }
  }
}
#During the terraform init step in your workflow,
#Terraform will initialize and configure the backend (which is Terraform Cloud in this case). 
#When it does this, it automatically fetches the state from Terraform Cloud (if it exists) and ensures that the state is up to date.