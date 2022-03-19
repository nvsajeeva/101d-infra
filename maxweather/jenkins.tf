/*
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "101d-jenkins"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
*/

resource "aws_instance" "jenkins" {
  subnet_id               = data.aws_subnets.example.ids[0]
  ami                     = "ami-0c02fb55956c7d316"
  key_name                = module.aws-keypair.key_name
  instance_type           = "t2.micro"
  vpc_security_group_ids      = [aws_default_security_group.default.id]
  disable_api_termination = false
  user_data               = null
  tags = {
    Name   = "101d-jenkins"
    Owner = "101d-devops"
  }

}
