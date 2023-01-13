resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.tag_name
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }
  volume_tags = {
    Name = var.vol_tag_name
    Owner = var.vol_tag_owner
    Purpose = var.vol_tag_purpose
  }
}
