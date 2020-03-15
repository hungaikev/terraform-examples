
resource "aws_instance" "myexample" {
  ami           = "ami-03d8059563982d7b0"
  instance_type = "t2.micro"

  # the VPC sunet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
}

resource "aws_ebs_volume" "ebs-volume-1" {
  availability_zone = "eu-central-1a"
  size              = 20
  type              = "gp2"
  # General Purpose storage, can also be standard or io1 or st1
  tags = {
    Name = "extra volume data"
  }
}

resource "aws_volume_attachment" "ebs-volume-1-attachment" {
  device_name = "/dev/xvdh"
  instance_id = aws_instance.myexample.id
  volume_id   = aws_ebs_volume.ebs-volume-1.id
}