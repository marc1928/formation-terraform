data "local_file" "foo" {
  filename = "${path.module}/text.txt" 
}

output "data" {
    value = data.local_file.foo.content
}