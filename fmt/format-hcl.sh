#!/usr/bin/env bash

# Formats all HCL-format files under working directory including subdirectories
# Runs `terraform fmt` for all .tf files
# Run `/terragrunt-fmt.sh` for all .hcl files
# Using cytopia's terragrunt-fmt.sh script (https://github.com/cytopia/docker-terragrunt-fmt) for .hcl files
# Using terraform for .tf and .tfvars
# Default action is to search recursively and modify all files.

echo -e "\n=> Searching for .hcl files"
/terragrunt-fmt.sh -recursive -write=true

echo -e "\n=> Searching for .tf and .tfvars files"
terraform fmt -recursive -write=true
