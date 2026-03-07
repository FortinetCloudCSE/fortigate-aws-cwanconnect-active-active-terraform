---
title: "Deployment"
chapter: false
menuTitle: "Deployment"
weight: 30
---

Once the prerequisites have been satisfied proceed with the deployment steps below.

1.  Clone this repo with the command below.
```
git clone https://github.com/FortinetCloudCSE/terraformfortigate-aws-cwanconnect-active-active-terraform.git
```

2.  Change directories and modify the terraform.tfvars file with your credentials and deployment information. 

{{% notice note %}} In the terraform.tfvars file, the comments explain what inputs are expected for the variables. For further details on a given variable or to see all possible variables, reference the variables.tf file. {{% /notice %}}
```
cd terraformfortigate-aws-cwanconnect-active-active-terraform/terraform
nano terraform.tfvars
```

3.  When ready to deploy, use the commands below to run through the deployment.
```
terraform init
terraform validate
terraform apply --auto-approve
```

4.  When the deployment is complete, you will see login information for the FortiGates like so.
```
Apply complete! Resources: 51 added, 0 changed, 0 destroyed.

Outputs:

cwan_existing = ""
cwan_new = <<EOT
# cwan id: core-network-058e914708c954d1d
# cwan segment key: segment
# cwan segment values = inspection, production, development

EOT
fgt_login_info = <<EOT
# fgt username: admin
# fgt1 initial password: i-09119d7308bc2f977
# fgt2 initial password: i-05b13b911be7b0994
# fgt1 login url: https://52.39.23.145
# fgt2 login url: https://35.161.30.122

EOT
```