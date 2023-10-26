resource "aws_lb_target_group" "target-group-app" {
  name     = var.tg-app-name
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id
  health_check {
    path    = "/"
    matcher = 200

  }
}

resource "aws_lb_listener" "alb_listener-app" {
  load_balancer_arn = aws_lb.alb-app.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group-app.arn
  }
}