module "instance" {
  source= "./instance/"
  iname= "rbinstacess"
  itype= "t3.micro"
  iami="ami-0bdd88bd06d16ba03"
}

module "bucket" {
  source= "./bucket"
  ibucket= "shaikrb3121.33"
}

module "security" {
  source= "./security" 
  isecu= "rbsecu"
}

