# Toast
This is a mini project to learn about EKS and Terraform on AWS
The purpose is to learn how to use terraform to deploy resources with my main intention being to experiment on how to manage the tf state e.g., choosing between S3/DynamoDB or Terraform Cloud state locking etc.

## Project name Toast

 - s3 module has a react website 

## Technologies used
 - terraform
  - You can install terraform from https://developer.hashicorp.com/terraform/downloads
  - EKS
  - eksctl
  - react for the frontend


## Features of toast
 - Creation on a VPC in aws with custom module 
  - Please use your own variable inside the modules/<module>/<variable.tf> and cidr if possible
 - Creation of EC2 instance with IG, SG, ELB
 - Creation of a K8s cluster in AWS

## Commands
 - Initialize with : terraform init
 - Incase of tls upgrade use : terraform init --upgrade
 - To format : terraform fmt
 - Validate tf with : terraform validate

 - To create infrastructure : terraform apply or terraform apply --auto-approve

# Always destroy infastructure 
 - terraform destroy --auto-approve

# License
MIT License

Copyright (c) 2022 Alvin Ndungu

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
