variable "filename" {
  default     = ["./pets.txt", "./cats.txt"]
  type        = list(string)
  description = "The path of Local File"
}
variable "content" {
  type        = map(string)
  description = "The content of Local File"
  default = {
    "statement1" = "We love Pets!"
    "statement2" = "We love Cats!"
    "statement3" = "We love Animals!  "
  }
}
variable "cats" {
  default = {
    "color" = "brown"
    "name"  = "bella"
  }
  type = map(string)
}
variable "pet_count" {
  default = {
    "dogs"     = "3"
    "cats"     = "1"
    "goldfish" = "2"
  }
  type = map(number)
}
variable "prefix" {
  default = ["Mrs", "Mr", "sir", "Miss"]
  type    = list(string)
  # type        = set(string) # don't accept duplicate value
  description = "The prefix to be set"
}
variable "separator" {
  default = "."
}
variable "length" {
  default     = 1
  type        = number
  description = "The length of the prefix to be set"
}
variable "password_change" {
  default = true
  type    = bool
}
variable "fruit" {
  default = ["Apple", "Banana", "Banana"]
  type    = list(string)
}
variable "age" {
  default = ["10", "12", "15"]
  type    = set(number)
}

variable "bella" {
  type = object({
    name         = string
    color        = string
    age          = number
    food         = list(string)
    favorite_pet = bool
  })

  default = {
    name         = "bella"
    color        = "brown"
    age          = 7
    food         = ["fish", "Chicken", "Turkey"]
    favorite_pet = true
  }
}

variable "kitty" {
  type    = tuple([string, number, bool])
  default = ["cat", 7, true]
}