locals {
  template_files = toset([
    "greeting.txt",
    "farewell.txt"
  ])
}


locals {
  main_resource_test = {
    test = {
      code    = "test_code"
      content = "This is a test with code argument - test"
    },
    test2 = {
      code    = "test2_code"
      content = "This is a test with code argument - test2"
    }
  }
}
