locals {
  template_files = toset([
    "greeting.txt",
    "farewell.txt"
  ])
}


locals {
  main_resource_test = {
    test = {
      code    = test
      content = "This is a test with code argument - ${arg}"
    }
    test2 = {
      code    = test2
      content = "This is a test with code argument - ${arg}"
    }
  }
}
