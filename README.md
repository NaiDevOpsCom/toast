# toast
This is EKS and terraform on AWS

## Project name Toast

## Technologies used
 - terraform
  - You can install terraform from https://developer.hashicorp.com/terraform/downloads
  - EKS
  -eksctl


## Features of toast
 - Creation on a VPC in aws with custom module 
 - Creation of EC2 instance with IG, SG, ELB
 - Creation of a K8s cluster in AWS

## Commands
 - Initialize with : terraform init
 - Incase of tls upgrade use : terraform --upgrade
 - To format : terraform fmt
 - Validate tf with : terraform validate


# License
MIT License

Copyright (c) 2022 Alvin Ndungu

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
