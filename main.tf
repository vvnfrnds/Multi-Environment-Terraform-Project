#DEV INFRA
module "dev-demo-app" {
  source = "./modules/demo-app/"
  env_name = "dev"
  instance_type = "t2.micro"
  ami_id = "ami-0bb84b8ffd87024d8"
  instance_name = "demo-instance"
  bucket_name = "demo-bucket"
  table_name = "demo.dynamodb"
 }

#QA INFRA
module "qa-demo-app" {
  source = "./modules/demo-app/"
  env_name = "qa"
  instance_type = "t2.small"
  ami_id = "ami-0bb84b8ffd87024d8"
  instance_name = "demo-instance"
  bucket_name = "demo-bucket"
  table_name = "demo.dynamodb"
 }

#PROD INFRA
module "prod-demo-app" {
  source = "./modules/demo-app/"
  env_name = "prod"
  instance_type = "t2.medium"
  ami_id = "ami-0fe630eb857a6ec83"
  instance_name = "demo-instance"
  bucket_name = "demo-bucket"
  table_name = "demo.dynamodb"
 }

