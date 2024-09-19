provider "local" {}

provider "template" {}

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
  #depends_on = [
  #  local_file.test
  #]
}

resource "template_file" "test" {
  for_each = local.main_resource_test
  template = each.content
  vars = {
    arg = each.code
  }
}

resource "local_file" "test_output" {
  for_each = template_file.test
  content  = each.rendered
  filename = "local_resources/${each.code}"
}
