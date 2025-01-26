module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "test-terraform-at"

  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}