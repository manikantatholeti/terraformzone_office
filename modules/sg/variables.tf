variable "sg_ingress_rules" {
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_block  = string
      description = string
    }))
    default     = [
        {
          from_port   = 22
          to_port     = 22
          protocol    = "tcp"
          cidr_block  = "1.2.3.4/32"
          description = "test"
        },
        {
          from_port   = 23
          to_port     = 23
          protocol    = "tcp"
          cidr_block  = "1.2.3.4/32"
          description = "test"
        },
    ]
}