// resource "aws_instance" "web-2" {
//   ami                         = "ami-0149b2da6ceec4bb0"
//   availability_zone           = "us-east-1a"
//   instance_type               = "t2.micro"
//   key_name                    = "LaptopKey"
//   subnet_id                   = "subnet-0d124b5eb12011584"
//   vpc_security_group_ids      = ["sg-0664fad55261dd1fa"]
//   associate_public_ip_address = true
//   tags = {
//     Name = "Docker_Host"
//   }
//   launch_template {
//     // id      = "lt-037a8c17eb984dafb"
//     name    = "Ubuntu_20_04_Machine_With_Docker"
//     version = "2"
//   }
// }