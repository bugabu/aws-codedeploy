# aws-codedeploy

# Code Deployement group permissions
arn:aws:iam::accountID:role/CodeDeployServiceRole

# EC2 instance configuration
The EC2 instance must have an IAM role with CodeDeploy permissions.

{
  "Effect": "Allow",
  "Action": [
    "codedeploy:*",
    "s3:GetObject",
    "s3:GetObjectVersion"
  ],
  "Resource": "*"
}

To check:
curl http://169.254.169.254/latest/meta-data/iam/info

Fix: Attach a role with AWSCodeDeployRole or equivalent permissions

# Install code deploy agent
#!/bin/bash
sudo dnf install -y ruby wget
wget https://aws-codedeploy-eu-west-1.s3.eu-west-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo systemctl start codedeploy-agent
sudo systemctl enable codedeploy-agent
sudo systemctl status codedeploy-agent

