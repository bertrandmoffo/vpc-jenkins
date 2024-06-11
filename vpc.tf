 //creating a vpc

 resource "aws_vpc" "kazi" {
   cidr_block = "44.0.0.0/16"
   instance_tenancy = "default"
   
   tags = {
     Name = "kazi"
   }
 }
