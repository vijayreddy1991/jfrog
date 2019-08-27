pushd $res_repo_vijay_resourcePath
mkdir terraform
path=($PWD)
ls -la
pushd $path/terraform
sudo apt-get update
sudo apt-get install wget unzip
wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
sudo unzip ./terraform_0.11.13_linux_amd64.zip -d /usr/local/bin/
terraform --version
popd
terraform init
pwd
terraform apply -auto-approve
terraform destroy -auto-approve
