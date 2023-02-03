######################################################
resource "aws_instance" "application" {
  ami           = "ami-00874d747dde814fa" 
  # ami           = var.my_ami

 instance_type = "t2.micro"
 subnet_id=aws_subnet.public_subnet.id
#  security_groups=[aws_security_group.allow_ssh.name]
key_name     = aws_key_pair.generated_key.key_name
 associate_public_ip_address=true
vpc_security_group_ids =[aws_security_group.allow_all.id]
user_data = file("templates/ubuntu.sh")

}
