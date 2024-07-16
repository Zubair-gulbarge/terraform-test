variable "filename" {
  default     = "./pets.txt"
  type        = string
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
variable "prefix" {
  default     = ["Mrs", "Mr", "sir", "Miss"]
  type        = list(string)
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