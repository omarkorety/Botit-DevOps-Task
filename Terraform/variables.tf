variable "my_vpc_cidr" {
    type = string
    default = "10.0.0.0/24"

}
####################################
variable "public_cidr" {
    type = string
    default = "10.0.0.0/28"
}
#############################################
variable "all-route" {
    type = string
    default = "0.0.0.0/0"
}
##############################
variable "Az1" {
    type=string
    default = "us-east-1a"
  
}
#################################
variable "Az2" {
    type= string
    default = "us-east-1b"
  
}
#######################################
variable "region" {
    type = string
    default="us-east-1"
}