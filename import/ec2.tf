
resource "aws_instance" "web" {
  ami                                  = "ami-0c614dee691cbbf37"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1a"
 
  instance_type                        = "t2.micro"
  
  key_name                             = "windows_server"
  monitoring                           = false
  
  security_groups                      = ["launch-wizard-4"]
 
  subnet_id                            = "subnet-02dfd651a91b5b411"
  tags = {
    Name = "Terraform2-server"
  }
  
  vpc_security_group_ids      = ["sg-00d04dab3a027cf66"]
  
}
