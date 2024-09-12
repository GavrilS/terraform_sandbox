provider "local" {}

provider "template" {}

resource "local_file" "test" {
  content  = template_file.greeting.rendered
  filename = "${path.module}/local_resources/test.txt"
}

data "local_file" "test" {
  filename = "${path.module}/local_resources/test.txt"
}

resource "template_file" "greeting" {
  template = file("templates/greeting.txt")
  vars = {
    name = "John Doe"
  }
}
