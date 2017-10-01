{
   ["$scheme"]= "http://trafficserver.apache.org/config/sni-remap",
   name= "SNIConfig",
   global= "sni_config",
   properties= {
      name="items",
      type="array",
      items= {
         type= "object",
         properties= {
            fqdn= {
               type= "string",
               validators= { "fqdn-check" }
            }
         }
      }
   }
}
