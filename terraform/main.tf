data "aws_security_group" "allow_httpd-ssh" {
    name = "allow_httpd-ssh"
}
resource "aws_instance" "pipeline-clients" {
    ami = "ami-033fabdd332044f06"
    instance_type = "t2.medium"
    security_groups = [ data.aws_security_group.allow_httpd-ssh.id ]
    count = 2
    
}

# output "instances_ip" {
#     value = aws_instance.pipeline-clients[*].public.ip
  
# }