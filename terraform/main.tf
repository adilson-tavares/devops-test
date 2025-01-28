module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  ami  = "ami-04b4f1a9cf54c11d0"
  name = "webserver-nginx"

  instance_type          = "t2.micro"
  monitoring             = true

  vpc_security_group_ids = ["${aws_security_group.sg_web_server.id}"]
  subnet_id              = aws_subnet.public.id

  create_iam_instance_profile = true
  iam_role_description        = "IAM role for EC2 instance"
  iam_role_policies = {
    AmazonSSMManagedInstanceCore = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  }

  enable_volume_tags = true
  volume_tags = {
    Snapshot = "true"
  }

  tags = {
    Name = "server-nginx"
    Terraform   = "true"
    Environment = "dev"
  }
}