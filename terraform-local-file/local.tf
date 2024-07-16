resource "local_file" "pet" {
  filename        = var.filename
  content         = var.content
  file_permission = "0700"
}

resource "local_file" "cat" {
  filename = var.filename
  content  = var.content
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}