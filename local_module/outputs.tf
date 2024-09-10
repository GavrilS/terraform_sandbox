output "test_ssh_dir" {
  value = provider::local::direxists(pathexpand("~/.ssh"))
}
