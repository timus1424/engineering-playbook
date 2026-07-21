# ALB & Auto Scaling Troubleshooting Playbook

> Lessons learned while deploying an Application Load Balancer with Auto Scaling Groups on AWS.

---

# Architecture Mental Model

```text
Internet
      │
      ▼
Internet Gateway
      │
      ▼
Public Route Table
      │
      ▼
Public Subnets
      │
      ▼
Application Load Balancer
      │
      ▼
Target Group
      │
      ▼
EC2 Instances
      ▲
      │
Auto Scaling Group
      ▲
      │
Launch Template
```

Every component depends on the one above it.

A failure near the top often causes symptoms much further down.

---

# Request Flow

```text
User

↓

Application Load Balancer

↓

Target Group

↓

Healthy EC2 Instance

↓

Apache

↓

Website
```

The ALB **never sends traffic directly to EC2.**

It only forwards requests to **healthy targets** inside a Target Group.

---

# Instance Launch Flow

```text
Launch Template

↓

Auto Scaling Group launches EC2

↓

cloud-init executes User Data

↓

Packages installed

↓

Apache starts

↓

Target Group Health Check

↓

Instance becomes Healthy

↓

ALB starts routing traffic
```

---

# What We Built

- VPC
- Public Subnets
- Internet Gateway
- Public Route Table
- Security Groups
- Launch Template
- Auto Scaling Group
- Target Group
- Application Load Balancer
- Apache web server

---

# Problem

Instances launched successfully but remained **Unhealthy** inside the Target Group.

The ALB therefore had no healthy targets to route traffic to.

---

# Investigation Checklist

Verified:

- Launch Template
- User Data
- Apache installation
- Security Groups
- Target Group
- Health Check path
- Internet Gateway
- Public Subnet association
- Auto Scaling configuration

Everything appeared correct.

---

# Root Cause

The Public Route Table was incorrectly configured.

Although the route table was associated with the public subnets, it did not provide working internet connectivity for newly launched instances.

Because of this:

- User Data executed
- Package downloads failed
- Apache was never installed
- Health checks failed
- Target Group remained unhealthy

The visible failure was the Target Group.

The real failure was networking.

---

# Resolution

Created a new Public Route Table.

Configured:

```
0.0.0.0/0
↓

Internet Gateway
```

Associated both public subnets.

Launched a fresh instance.

Result:

- User Data completed successfully
- Apache installed
- Health Checks passed
- Target became Healthy
- ALB served the website successfully

---

# Cloud-init Debugging

When User Data appears not to work:

Check:

```bash
sudo cat /var/log/cloud-init-output.log
```

or

```bash
sudo cat /var/log/cloud-init.log
```

These logs usually explain why provisioning failed.

---

# Health Check Checklist

If a Target Group is unhealthy, verify in this order:

- Is the EC2 instance running?
- Is Apache (or the application) installed?
- Is the application listening on the expected port?
- Did User Data complete successfully?
- Did cloud-init report any errors?
- Does the Security Group allow traffic?
- Does the subnet have internet access?
- Is the Route Table correct?
- Is the Internet Gateway attached?
- Is the Target Group health check path correct?

Avoid changing multiple things at once.

Fix one layer, then test again.

---

# Lessons Learned

## Auto Scaling Groups do not receive traffic

Their only responsibility is launching and terminating EC2 instances.

---

## Target Groups decide whether traffic reaches an instance

An instance can be running but still receive zero requests if it fails health checks.

---

## Launch Templates are immutable

Instead of editing an existing template, create a new version.

---

## User Data executes during first boot

If provisioning fails, launching another instance with the same Launch Template usually reproduces the exact same failure.

---

## Networking problems can appear as application failures

An unhealthy Target Group does not necessarily mean:

- the Target Group is broken
- Apache is broken
- the ALB is broken

The real problem may exist several layers earlier.

---

# Biggest Takeaway

Infrastructure should always be debugged as a dependency chain rather than as isolated services.

Instead of asking:

> "Why is my Target Group unhealthy?"

Ask:

> "What dependencies must succeed before a Target Group can become healthy?"

That question usually leads to the real root cause much faster.

---
