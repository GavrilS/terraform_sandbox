output "test_ssh_dir" {
  value = provider::local::direxists(pathexpand("~/.ssh"))
}

#output "local_resource_value" {
#  value = data.local_file.test.content
#}
