job "hello" {
datacenters = ["dc1"]
type = "service"


group "hello-group" {
count = 1


task "hello-task" {
driver = "docker"


config {
image = "devops-intern-hello:latest"
port_map {
http = 8080
}
}


resources {
cpu = 100
memory = 128
network {
mbits = 10
port "http" {}
}
}


# Keep logs readable
env = {
"LOG_LEVEL" = "info"
}


log_config {
max_files = 3
max_file_size = 1024
}
}
}
}
