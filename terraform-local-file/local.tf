resource "local_file" "pet" {
  filename        = "./pets1.txt"
  content         = "We love Pets!"
  file_permission = "0700"
}

resource "local_file" "cat" {
  filename = "./cat.txt"
  content  = "My Favourite pet is Mr.Whiskers"
}

resource "random_pet" "my-pet" {
  prefix    = "Mrs"
  separator = "."
  length    = "1"
}