resource "aws_autoscaling_group" "asg-app" {
  name                = var.asg-app-name
  desired_capacity    = 2
  max_size            = 4
  min_size            = 1
  target_group_arns   = [aws_lb_target_group.target-group-app.arn]
  health_check_type   = "EC2"
  vpc_zone_identifier = [aws_subnet.app-subnet1.id, aws_subnet.app-subnet2.id]


  launch_template {
    id      = aws_launch_template.template-app.id
    version = aws_launch_template.template-app.latest_version
  }
}