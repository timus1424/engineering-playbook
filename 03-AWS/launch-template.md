### Launch Template

A Launch Template is a reusable blueprint for creating EC2 instances.

It contains the EC2 configuration such as:
- AMI
- Instance Type
- Key Pair
- Security Group
- Storage
- UserData

The Auto Scaling Group does not know how to build an EC2 instance. It uses the Launch Template whenever a new instance needs to be launched.

