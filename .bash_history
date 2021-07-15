exit
exit
cd viya4-iac-azure/
vi modules/azurerm_vnet/main.tf 
ls
cd modules/azurerm_vnet/
ls
vi variables.tf 
exit
sudo yum install git
git clone https://github.com/sassoftware/viya4-iac-azure
cd viya4-iac-azure/
cp examples/sample-input-byo.tfvars terraform.tfvars
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum update
sudo yum install git docker-ce docker-ce-cli containerd.io
sudo systemctl enable docker
vi $HOME/.azure_docker_creds.env
vi terraform.tfvars 
rsa-keygen
ssh-keygen
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
sudo systemctl
sudo systemctl start docker
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
sudo docker build -t viya4-iac-azure .
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi terraform.tfvars 
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi terraform.tfvars 
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi terraform.tfvars 
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
mv terraform.tfvars terraform.rdam
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.rdam -state=/workspace/terraform.tfstate
cat terraform.rdam 
ls
mv terraform.rdam ../terraform.tfvars
sudo docker build -t viya4-iac-azure .
mv ../terraform.tfvars ./
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tf
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi terraform.tfvars 
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi terraform.tfvars 
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
cd modules/azurerm_vnet
ls
vi main.tf
cd ../..
vi terraform.tfvars 
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
cd modules/azurerm_network_security_group/
vi main.tf
cd ../..
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi variables.tf 
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi main.tf
cd modules/azurerm_vnet
vi variables.tf 
cd ../azurerm_nsg
cd ../azurerm_network_security_group/
vi variables.tf 
cd ../..
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi main.tf
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi main.tf
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi main.tf
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi variables.tf 
sudo docker build -t viya4-iac-azure .
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
cd modules/azurerm_network_security_group/
vi main.tf 
ls
cd ../..
vi main.tf
sudo docker build -t viya4-iac-azure .
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
vi main.tf
sudo docker build -t viya4-iac-azure .
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace -volume=$HOME/.ssh:/.ssh viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace -volume=$HOME/.ssh:/.ssh viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace --volume=$HOME/.ssh:/.ssh viya4-iac-azure plan -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
sudo docker run --rm --group-add root --user "$(id -u):$(id -g)" --env-file=$HOME/.azure_docker_creds.env --volume=$(pwd):/workspace --volume=$HOME/.ssh:/.ssh viya4-iac-azure apply -auto-approve -var-file=/workspace/terraform.tfvars -state=/workspace/terraform.tfstate
exit
