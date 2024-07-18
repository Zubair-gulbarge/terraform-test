resource "local_file" "pet" {
  filename        = var.filename[0]
  content         = var.content["statement1"]
  file_permission = "0700"
  lifecycle {
    prevent_destroy = true
  }
}

resource "local_file" "cat" {
  filename = var.filename[1]
  content  = "My Favourite pet is ${random_pet.my-pet.id}"
  depends_on = [ 
    random_pet.my-pet
  ]
  file_permission = "0777"
  lifecycle {
    create_before_destroy = true
  }
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix[1]
  separator = var.separator
  length    = var.length
}

output pet-name {
  value = random_pet.my-pet.id
  description = "Record the value of pet ID genereated by the random_pet resource"
}


# create_before_destroy // Create the resource first and then destroy older [true-or-false]
# prevent_destroy // Prevents destroy of a resource
# ignore_chnages  //  Ignore Changes to Resource Attributes (specific/all)

# depends_on = [blockname.name] random_pet.my-pet
#count = 3 // for creating multiple files at the same time