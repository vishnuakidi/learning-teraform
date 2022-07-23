variable "a" {
  default = 100
}

output "a"{
  value = var.a
}

output "values"{
  value = "Value of a = ${var.a}, b = ${var.b}, c = ${var.c} d = ${var.d}"
}

variable "b" {}

variable "c" {}

variable "d" {}
