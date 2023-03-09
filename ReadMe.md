# Instructions for using this repo with AWS

### <ins>Using Credentails for Powershell Env Variables</ins> 
$env:AWS_ACCESS_KEY_ID='AKIA2QEFLXXXXXXXXXXXXX' \
$env:AWS_SECRET_ACCESS_KEY='iDJIhzj9TWMDyyyyyyyyyyyyyyyyyyyy' \
$env:AWS_DEFAULT_REGION='us-east-1'

### <ins>Using Credentails for Linix Env Variables</ins> 
export AWS_ACCESS_KEY_ID='AKIA2QEFLXXXXXXXXXXXXX' \
export AWS_SECRET_ACCESS_KEY='iDJIhzj9TWMDyyyyyyyyyyyyyyyyyyyy' \
export ARM_TENANT_ID='us-east-1' 

### <ins>Packages Needed</ins> 
1. Terraform
2. git
3. az cli
4. unzip

### <ins>Command Usage</ins> 
git add . \
git commit -m "Commit Mesg" \
git push origin <branch_name> \
<br>
terraform init \
terraform fmt \
terraform validate \
terraform plan \
terraform apply \
terraform apply --auto-approve \
terraform destroy --auto-approve 