#!/bin/bash
apt-get install awscli -y &&
aws configure set aws_access_key_id a &&
sudo chown -R ubuntu:ubuntu ~/.aws
cat << 'EOF' > ~/.aws/config
[profile {YOUR_PROFILE}]
{IAM_ROLE_ARN}
source_profile = default
region = us-west-2
EOF

export AWS_DEFAULT_PROFILE={YOUR_PROFILE}
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
ALLOCATION_ID=(EIP_ALLACTIONID)
aws ec2 associate-address --instance-id $INSTANCE_ID --allocation-id $ALLOCATION_ID --allow-reassociation