module "s3_bucket"{
    
    source = "../../../modules/s3_bucket"
    bucket = join("-", [element(split("/", path.cwd), length(split("/", path.cwd))-1), "sss", 
    element(split("/", path.cwd), length(split("/", path.cwd))-2)])

}