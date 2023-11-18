output "web-server-dns" {
  value = aws_lb.alb-web.dns_name
}