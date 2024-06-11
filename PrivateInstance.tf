
# Creating EC2 instance in private subnet

resource "aws_instance" "private-server" {
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private.id
    security_groups = [aws_security_group.kazi-sg.id]
    key_name = "jenkins-key"

    tags = {
      Name ="private-server"
    }
}