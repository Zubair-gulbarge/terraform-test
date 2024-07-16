resource "local_file" "pet" {
  filename        = var.filename
  content         = var.content["statement1"]
  file_permission = "0700"
}

resource "local_file" "cat" {
  filename = var.filename
  content  = var.content["statement2"]
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix[2]
  separator = var.separator
  length    = var.length
}