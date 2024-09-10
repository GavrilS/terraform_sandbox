provider "local" {}

resource "local_file" "test" {
  content  = "This is a test!"
  filename = "${path.module}/local_resources/test.txt"
}

data "local_file" "test" {
  filename = "${path.module}/local_resources/test.txt"
}
