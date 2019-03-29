# Static website deployment.
Using Terraform and Bash to deploy a static website to S3.

## Prerequisites
1. Have AWS CLI installed and a credentials profile configured. 
2. Own the route domain in R53 (that you pass into the bash script) already.
3. Have Terraform installed.

## Instructions
1. Put your HTML in the website directory.
2. Set up terraform/backend.tf and terraform/provider.tf with the correct profile names and backend config. TODO: Pass this stuff in.
2. Run the terraform.sh bash script to execute the Terraform.

# Examples
./terraform.sh apply cv.website.com profilename
./terraform.sh destroy cv.website.com profilename