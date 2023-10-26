resource "aws_lb" "alb-web" {
  name               = var.alb-web-name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb-security-group-web.id]
  subnets            = [aws_subnet.web-subnet1.id, aws_subnet.web-subnet2.id]
}