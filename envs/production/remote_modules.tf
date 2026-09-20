# Module calls that leave this repository. Kennari never fetches a registry module and never
# fetches a repository that is not connected to the application: each call below is expected to
# be LISTED with its source kind and read state, not silently absent.

# M5, private registry (four segments, the first a host): unread, source kind registry_private.
module "metrics" {
  source  = "registry.internal.example/modfixture/metrics/aws"
  version = "~> 1.2"
}

# M5, public registry (three segments): unread, source kind registry_public.
module "catalog" {
  source  = "modfixture/catalog/aws"
  version = ">= 0.3"
}

# M5, git address naming a repository that is NOT connected to this application:
# unread, source kind git, reason not_connected.
module "network" {
  source = "git::https://github.com/ors667/Modules-Fixture-NotConnected.git//modules/network?ref=v2.1.0"
}

# M10, git address naming a repository that IS connected to this application
# (ors667/Modules-Fixture-Platform is connected to the same application): readable under R-B.
module "logging" {
  source         = "git::https://github.com/ors667/Modules-Fixture-Platform.git//modules/logging?ref=v1.0.0"
  retention_days = 14
}
