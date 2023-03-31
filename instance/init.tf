data "template_file" "client" {
  template = file("/home/ubuntu/izac3ts/scripts/myinstall.sh")
}
data "template_cloudinit_config" "config" {
  gzip          = false
  base64_encode = false
  #first part of local config file
  part {
    content_type = "text/x-shellscript"
  content      = data.template_file.client.rendered
  }
}

