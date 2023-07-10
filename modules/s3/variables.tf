variable "project" {
  default = "toast"
}

variable "environment" {
    type = string
    description = "Environment"
    default = "Dev"
}

variable "bucket_name" {
  default = "toast-react-bucket"
}