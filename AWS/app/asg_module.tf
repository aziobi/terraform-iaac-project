module "app1" { 
source = "./module" 
region = "us-east-1" 
} 



module "wordpress-london" { 
source = "./module" 
region = "us-west-2" 
} 