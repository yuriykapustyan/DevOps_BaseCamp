# Terraform modules AWS and Azure
This Terraform project deploys one AWS and one Azure instances with [Grafana](https://grafana.com).

##### URL AWS Grafana instance: http://44.212.44.171
##### URL Azure Azure instance: http://172.174.49.141

## Want to try this project?
#### You need to have:
- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

- [ssh public key](https://www.ssh.com/academy/ssh/keygen)

- [terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

- [Azure accout](https://azure.microsoft.com/en-us/free/)

- [AWS account](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all)


#### Then, play with it:

Open terminal and execute commands:

`git clone https://github.com/yuriykapustyan/DevOps_BaseCamp.git` 

`cd DevOps_BaseCamp/Homework6`

Put your access and secrete keys, uncomment the lines in providers.tf file.

Initiate Terraform:

`terraform init`

Validate if everything is OK:

`terraform validate`

Make a plan:

`terrafrom plan`

Apply it to deploy the instances:

`terraform apply`

In the end you should see the message like this:

![image](https://user-images.githubusercontent.com/12457843/210130632-751edbd2-de6d-4371-a790-625b9095aa37.png)

To connect to the instance via ssh:

`ssh -i ~/.ssh/id_rsa ubuntu@<public_ip>`

When you finish playing and want to destroy: 

`terraform destroy`
