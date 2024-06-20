variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the s3 bucket for the database's remote state"
  type       = string
}

variable "db_remote_state_key" {
  description = "The path for the database remote state in s3"
  type = string
}

variable "instance_type" {
  description = "The type of EC2 instance to use for the server"
  type        = string
}

variable "min_size" {
  description = "The minimum number of instances in the autoscaling group"
  type        = number
}

variable "max_size" {
  description = "The maximum number of instances in the autoscaling group"
  type        = number
}

variable "custom_tags" {
  description = "A map of custom tags to set on the instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "enable_autoscaling" {
  description = "Whether to enable autoscaling for the server"
  type        = bool
}
