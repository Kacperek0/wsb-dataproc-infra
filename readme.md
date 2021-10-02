## Terraform builder for GCP Dataproc

### How to setup Terraform
[Terraform Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)

### Create Service account in GCP
[Service accounts](https://cloud.google.com/iam/docs/creating-managing-service-accounts)

You will have to assign right roles to your service account.

### Build infra with Terraform
1. Open *.auto.tfvars* file and change the name variables according to your needs.
2. Run following bash commands:
```bash
terraform init
terraform plan -out=plan
terraform apply plan
```
3. To delete the resources please execute the following commands:
```bash
terraform plan -destroy -out=plan
terraform apply plan
```

#### Todo
- [ ] CI/CD Pipeline

##### Any questions?
@kacperek0
