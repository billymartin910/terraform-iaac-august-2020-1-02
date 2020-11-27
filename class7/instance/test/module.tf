module "db" {
	source = "../"
	region = "us-east-2"
	subnet_ids = [
		"subnet-01d3f937459ae67f1", 
		"subnet-0188516414b625e89", 
		"subnet-0fe21855787f45b0a"
	]
	security_group_name = "db"
	allowed_hosts = [
		"0.0.0.0/0"
	]
	db_name = "dbname"
	engine = "mysql"
	engine_version = "5.7"
	instance_class = "db.t2.micro"
	username = "foo"
	password = "foobarbaz"
	publicly_accessible = true
    allocated_storage = "20"
}

output "region" {
	value = "${module.db.region}"
}
output "subnet_list" {
	value = "${module.db.subnet_list}"
}
output "allowed_hosts" {
	value = "${module.db.allowed_hosts}"
}
output "DB_NAME" {
	value = "${module.db.DB_NAME}"
}
