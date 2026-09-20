# The control case: a module folder INSIDE the selected folder, which today's import
# already follows. It must keep reading the same after the modules work.
module "inline_flags" {
  source      = "./inline"
  environment = var.environment
}
