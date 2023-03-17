# DOB_Capstone2
Deploying to a Terraform-provisioned EKS cluster with Ansible

## Requirements
The below requirements need to be met before Ansible can be run from the host machine:
- python >= 2.7
- openshift >= 0.6
  ```Bash
  python3 -c "import openshift"
  ```
- PyYAML >= 3.11
  ```Bash
  python3 -c "import yaml"
  ```