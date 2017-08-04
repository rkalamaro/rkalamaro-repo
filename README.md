# Elastic IP Bind to an EC2 Instance

# About

This user-data script would allow your EC2 instances to be auto associated with EIP during launch.
very handy to be used for Auto Scaling groups with maximum 1 instance and your application needs to bind with a specific IP.

Requirements:

#Instance must have access to the internet

#Works on Ubuntu - should work on other Linux builds.

#Must have appropriate EC2 permissions associated to the instance role that can associate Elastic IPs 

#Add ec2:AssociateAddressand - ec2:Describe* permissions.
