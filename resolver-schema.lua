{
  ["$schema"] = "http://trafficserver.apache.org/schema/dns_resolver",
  global = "name_servers",
  class = "ResolverConfig",
  type = "object",
  description = "Nameserver resolver configuration.",
  properties = {
    round_robin = {
      type = "object",
      properties = {
        style = {
          type = 'enum',
          kv = { 'STRICT' = 0 , 'TIMED' = 1 }
        },
        time = {
          type = "integer",
          description = "Time interval for a single nameserver before shifting to the next."
        },
        count = {
          type="integer",
          description="Number of queries for a single namserver before shifting to the next."
        }
      }
    },
    ns = {
      type = "array",
      description = "List of nameservers",
      items = {
        type = "string",
        description = "FQDN or IP address of nameserver."
      }
    }
  }
}
