resource "local_file" "foo" {
  content  = "Hello World"
  filename = "${path.module}/foo.txt"
}