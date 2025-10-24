variable "iname" {
type=  list(string)
default= ["rehan","shaik","basha"]
}

variable "icount" {
  type= number
  default =3
}

variable "itype"{
type= list(string)
default= ["t2.nano","t2.small","t2.large"]
}

