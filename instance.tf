
resource "aws_instance" "web" {
  ami           = "ami-03d8059563982d7b0"
  instance_type = "t2.micro"

  # the VPC sunet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
}

resource "aws_instance" "web1" {
  ami           = "ami-03d8059563982d7b0"
  instance_type = "t2.micro"

  # the VPC sunet
  subnet_id = aws_subnet.main-public-2.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
}

resource "aws_instance" "web2" {
  ami           = "ami-03d8059563982d7b0"
  instance_type = "t2.micro"

  # the VPC sunet
  subnet_id = aws_subnet.main-public-3.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
}

resource "aws_instance" "web3" {
  ami           = "ami-03d8059563982d7b0"
  instance_type = "t2.micro"

  # the VPC sunet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name

  tags = {
    Name = "web3"
  }
}

resource "aws_instance" "web4" {
  ami           = "ami-03d8059563982d7b0"
  instance_type = "t2.micro"

  # the VPC sunet
  subnet_id = aws_subnet.main-public-2.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
  tags = {
    Name = "web4"
  }
}

resource "aws_instance" "web5" {
  ami           = "ami-03d8059563982d7b0"
  instance_type = "t2.micro"

  # the VPC sunet
  subnet_id = aws_subnet.main-public-3.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
  tags = {
    Name = "web5"
  }
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
  instance_id = aws_instance.web.id
  volume_id   = aws_ebs_volume.ebs-volume-1.id
}

