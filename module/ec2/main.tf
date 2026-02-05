resource "aws_instance" "test" {
  ami                    = "ami-0f5ee92e2d63afc18"
  instance_type          = t2.medium
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name = aws_key_pair.ec2_key.key_name
  user_data              = file("${path.root}/user_data.sh")
}
