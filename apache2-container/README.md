# 00_deployments
Code Samples - Infrastructure and Application Deployments

Apache2 - includes instance container

- name: AWS - Create EC2 Instance
    - name: Create Node communication subnet
    - name: Deployment Record Update Include VPC ID
    - name: Deployment Record Update New Subnet Id
    - name: Create node communication security group
    - name: Deployment Record Update Security Group
    - name: Show security group sg instance_id
    - name: Create K8s assume Role
    - name: Deployment Record Update IAM Role
    - name: AWS IAM Instance Profile - Create
    - name: Create K8s ECR Policy
    - name: Deployment Record Update IAM Policy
    - name: Attach K8s IAM Role to Profile
    - name: Deployment Record Update Instance Profile
#    - name: create classic elb for services
#    - name: Deployment Record Update Load Balancer
    - name: New EC2 Instance
    - name: Deployment Record Update Instance
    - name: Register hosts to ec2group
    - name: Create DNS A record
    - name: Deployment Record Update DNS Record
    - name: Deployment Record Update DNS Record
- name: Import/Run basic ubuntu server setup
- name: Initial server setup tasks
#    - name: password
    - name: Wait for SSH
    - name: Update apt cache
    - name: Update installed packages
    - name: Define prefered timezone
    - name: Install zip
    - name: Install pip
    - name: Install curl
    - name: Install NFS server
    - name: Install NFS client
    - name: Make sure NTP service exists
    - name: Make sure NTP service is running
    - name: Install boto 
    - name: Install awscli
    - name: Create the ssh group
    - name: Create the docker group
    - name: Make sure we have a 'sudo' group
    - name: Create a user with sudo privileges
    - name: Add ubuntu user to the allowed group
    - name: Set authorized key for remote user
    - name: Grant SUDO access
    - name: Disable remote login for root
    - name: Configure SSH AllowGroups
    - name: UFW - Allow ssh connections
    - name: UFW - Allow http/https connections
    - name: UFW - Allow http/https connections
    - name: UFW - Allow control plane connections
    - name: UFW - Allow k8s connections 
    - name: UFW - Allow k8s connections
    - name: Brute-force attempt protection for SSH
    - name: UFW - Deny other incoming traffic and enable UFW
    - name: Remove excess packages no longer needed
    - name: Reboot all hosts
- name: Import/Run docker container

    - name: Wait for ssh
    - name: Update apt cache
    - name: Docker is present
    - name: Docker.io is present
    - name: Docker-compose is present
    - name: Python-Docker is present
    - name: Group docker exists
    - name: create web directory
    - name: Create www directory
    - name: Create mysql directory
    - name: Copy initial compose
    - name: Run docker compose
    - name: Show initial create results
    - name: Copy docker build
    - name: Copy index.php
    - name: Run docker compose
    - name: Show update results
    - name: Verify that the web service is running
