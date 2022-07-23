variable "a" {
  default = 100
}

output "a"{
  value = var.a
}

output "x"{
  value = "Value of a = %{var.a}"
}
