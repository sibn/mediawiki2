**Deploying Mediawiki app

I add terraform code to deploying app in to apis using Apim-automation pipeline. 

This is a simple automation for setting up minikube in Azure and deploying Mediawiki into it using terraform.

Getting Started
Follow these simple instructions to get your minkikube up and running along with Mediawiki deployed into it.

Prerequisites
Install Terraform and git on the machine.

Install ruby and ruby json.

Export the ACCESS KEY and SECRET KEY of AWS as an environment variable or pass it during the run time

yum install git ruby ruby-json -y

wget https://releases.hashicorp.com/terraform/0.12.6/terraform_0.12.6_linux_amd64.zip

sudo unzip ./terraform_0.11.13_linux_amd64.zip -d /bin/


Running The Automation

Clone the current repo to your local machine using

git clone https://gitlab.com/authenticator4/medaiwiki.git

Move into Terraform directory
cd MediaWiki/Terraform/

Run the Terraform script
terraform  Plan For Apply
terraform Plan and Apply

Need to specify the region at the run time eg:Uk West.

******
