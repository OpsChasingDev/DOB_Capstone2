# DOB_Capstone2
Deploying to a Terraform-provisioned EKS cluster with Ansible

## Special Notes

Between the time the project was release and the time it was done here, newer versions of the eks terraform module no longer automatically wrote out an updated kubeconfig file to connecting to the newly provisioned cluster.  Additional information has been added to the "deploy-to-k8s.yaml" file in comments.

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