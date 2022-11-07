variable "region" {
  type        = string
  description = "AWS region"
  default     = "eu-west-1"
}

variable "environment" {
  type        = string
  description = "The environment in which this is deployed"
}

variable "project" {
  type        = string
  description = "Project name"
}
