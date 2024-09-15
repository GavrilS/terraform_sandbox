provider "local" {}

provider "template" {}

locals {
    template_files = toset([
        "greeting.txt",
        "farewell.txt"
    ])
}

resource "local_file" "test" {
  for_each = local.template_files
  content  = template_file.greeting[each.key].rendered
  filename = "${path.module}/local_resources/${each.key}"
}

data "local_file" "test" {
  for_each = local.template_files
  filename = "${path.module}/local_resources/${each.key}"
}

resource "template_file" "greeting" {
  for_each = local.template_files
  template = file("templates/${each.key}")
  vars = {
    name = "John Doe"
  }
}
