resource "aws_key_pair" "asg_key" {
  key_name = "asgkey"
  public_key = file("asgkey.pub")
  #public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO/eYqe31YBuuVq/ydvq+j0lWs/ZHevIb0akhaKO8SeA harathi@HARATHI_HOME"
  tags = {
    Name = "asg-keypair"
  }
}