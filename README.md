# AWS Multi-Tier Architecture with Terraform

Deploy a scalable and resilient multi-tier architecture on AWS using Terraform.

## 🚀 Project Overview

This project allows us to deploy a highly available, scalable, and secure multi-tier architecture on Amazon Web Services (AWS) using Terraform. The architecture consists of the following three tiers:

- **Web Tier**: This tier handles incoming user requests and can be horizontally scaled for increased capacity. It typically includes web servers and a load balancer for distributing traffic.

- **Application Tier**: Application servers run our business logic and interact with the database tier. They can also be horizontally scaled to meet demand.

- **Database Tier**: The database stores and manages our application data. In this architecture, we use Amazon RDS for a managed database service.

## 🚦 Getting Started

### Prerequisites

Before you get started, make sure you have the following prerequisites in place:

- [Terraform](https://www.terraform.io/) installed.
- AWS IAM credentials configured.
- Git for cloning the repository.

## 📋 Table of Contents

- [Features](#-features)
- [Web Tier](#-web-tier)
- [Application Tier](#-application-tier)
- [Database Tier](#-database-tier)
- [Terraform Configuration](#-terraform-configuration)
- [Deployment](#-deployment)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [License](#-license)

## ✨ Features

- **High Availability**: The architecture is designed for fault tolerance and redundancy.
- **Scalability**: Easily scale the web and application tiers to handle varying workloads.
- **Security**: Security groups and network ACLs are configured to ensure a secure environment.

## 🌟 Web Tier

The Web Tier is the entry point for incoming user requests. It typically includes:

- **Load Balancer**: Distributes traffic across multiple web servers.
- **Auto Scaling**: Automatically adjusts the number of web servers based on traffic.
- **Security Groups**: Controls incoming and outgoing traffic to the web servers.

### Web Tier Configuration

You can find the configuration for the Web Tier in the [web-tier/](web-tier/) directory. It includes:

- [Load Balancer Configuration](alb-web.tf)
- [Auto Scaling Configuration](asg-web.tf)
- [Security Group Configuration of Load balancer](alb-web-sg.tf)
- [Security Group Configuration of Auto Scaling Group](asg-web-sg.tf)

## 🚀 Application Tier

The Application Tier hosts the application servers responsible for running business logic and interacting with the database tier. Key components include:

- **Application Servers**: These run your application code and can be horizontally scaled.
- **Load Balancer**: Distributes traffic to the application servers.
- **Security Groups**: Controls incoming and outgoing traffic to the application servers.

### Application Tier Configuration

Explore the Application Tier configuration in the [app-tier/](app-tier/) directory. It includes:

- [Load Balancer Configuration](alb-app.tf)
- [Auto Scaling Configuration](asg-app.tf)
- [Security Group Configuration of Load balancer](alb-app-sg.tf)
- [Security Group Configuration of Auto Scaling Group](asg-app-sg.tf)

## 💽 Database Tier

The Database Tier stores and manages our application data. We use Amazon RDS for a managed database service. Key components include:

- **Amazon RDS**: A managed database service for MySQL/PostgreSQL/SQL Server databases.
- **Security Groups**: Control incoming and outgoing traffic to the database.

### Database Tier Configuration

The Database Tier configuration is available in the [db-tier/](db-tier/) directory. It includes:

- [Amazon RDS Configuration](rds.tf)
- [Security Group Configuration](db-sg.tf)

## 🔧 Terraform Configuration

The Terraform configuration for this project is organized into modules and resources to create the necessary AWS infrastructure components. Key components include:

- Virtual Private Cloud (VPC)
- Subnets and Route Tables
- Security Groups and Network ACLs
- Load Balancers
- Auto Scaling Groups
- RDS Database Instances

## 🚀 Deployment

Follow these steps to deploy the architecture:

1. Clone the repository:

   ```bash
   git clone https://github.com/mathesh-me/multi-tier-architecture-using-terraform.git
   ```

2. Make changes as per your needs.
3. Initialize Terraform and apply the configuration:
   ```
   terraform init
   ```
4. Review the changes and confirm.

## 💼 Usage

### Scaling
- To scale the Web or Application Tier, use Auto Scaling configurations provided in the respective Terraform files. Adjust the desired capacity to match your scaling requirements.
### Database Management
- Access the Amazon RDS instance in the Database Tier to manage your data.
### Load Balancing
- Configure the load balancer in the Web and Application Tiers to distribute traffic evenly.
### Security Considerations
- Review and customize the security groups and network ACLs to meet your specific security requirements.

## 🤝 Contributing
Contributions are Welcome! Please read my Contributing Guidelines to get started with contributing to this project.

## 📄 License
This project is licensed under the MIT License.