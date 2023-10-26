variable "region-name" {
  description = "Region name"
}
variable "vpc-cidr-block" {
  description = "CIDR Block for VPC"
}

variable "vpc-name" {
  description = "Name for Virtual Private Cloud"
}

variable "igw-name" {
  description = "Name for Internet Gateway"
}

variable "nat-gw-name" {
  description = "Name for NAT Gateway"
}

variable "web-subnet1-cidr" {
  description = "CIDR Block for Web-tier Subnet-1"
}

variable "web-subnet1-name" {
  description = "Name for Web-tier Subnet-1"
}

variable "web-subnet2-cidr" {
  description = "CIDR Block for Web-tier Subnet-2"
}

variable "web-subnet2-name" {
  description = "Name for Web-tier Subnet-2"
}

variable "app-subnet1-cidr" {
  description = "CIDR Block for Application-tier Subnet-1"
}

variable "app-subnet1-name" {
  description = "Name for app-tier Subnet-1"
}

variable "app-subnet2-cidr" {
  description = "CIDR Block for Application-tier Subnet-2"
}

variable "app-subnet2-name" {
  description = "Name for Application-tier Subnet-2"
}


variable "db-subnet1-cidr" {
  description = "CIDR Block for Database-tier Subnet-1"
}

variable "db-subnet1-name" {
  description = "Name for Database-tier Subnet-1"
}

variable "db-subnet2-cidr" {
  description = "CIDR Block for Database-tier Subnet-2"
}

variable "db-subnet2-name" {
  description = "Name for Database-tier Subnet-2"
}

variable "az-1" {
  description = "Availabity Zone 1"
}

variable "az-2" {
  description = "Availabity Zone 2"
}

variable "public-rt-name" {
  description = "Name for Public Route table"
}

variable "private-rt-name" {
  description = "Name for Private Route table"
}

variable "launch-template-web-name" {
  description = "Name for Launch-template-1"
}

variable "image-id" {
  description = "Value for Image-id"
}

variable "instance-type" {
  description = "Value for Instance type"
}

variable "key-name" {
  description = "Value for Key name"
}

variable "web-instance-name" {
  description = "Value for Web Instances"
}

variable "alb-web-name" {
  description = "Name the Load Balancer for the Web Tier"
}

variable "alb-sg-web-name" {
  description = "Name for alb security group 1"
}

variable "asg-web-name" {
  description = "Name the Auto Scaling group in Web Tier"
}

variable "asg-sg-web-name" {
  description = "Name for asg security group 1"
}

variable "tg-web-name" {
  description = "Name for Target group web"
}

variable "launch-template-app-name" {
  description = "Name for Launch-template-1"
}

variable "app-instance-name" {
  description = "Value for App Instances"
}

variable "alb-app-name" {
  description = "Name the Load Balancer for the App Tier"
}

variable "alb-sg-app-name" {
  description = "Name for alb security group 1"
}

variable "asg-app-name" {
  description = "Name the Auto Scaling group in app Tier"
}

variable "asg-sg-app-name" {
  description = "Name for asg security group 1"
}

variable "tg-app-name" {
  description = "Name for Target group app"
}

variable "db-username" {
  description = "Username for db instance"
}

variable "db-password" {
  description = "Password for db instance"
}

variable "db-name" {
  description = "Name for Database"
}

variable "instance-class" {
  description = "Value for DB instance class"
}

variable "db-sg-name" {
  description = "Name for DB Security group"
}

variable "db-subnet-grp-name" {
  description = "Name for DB Subnet Group"
}

variable "app-db-sg-name" {
  description = "Name for App-DB SEcurity group"
}