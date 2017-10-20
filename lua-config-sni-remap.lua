{
   ["$schema"]= "http://trafficserver.apache.org/config/sni-remap",
   name= "SNIConfig",
   global= "sni_config",
   type="object",
   properties= {
      type="array",
      items= {
         type= "object",
         properties= {
            fqdn= {
               type= "string",
               validators= { "fqdn-check" }
            }.
            client_cert_verify={
               ['$ref']='#/definitions/cert_verification',
               description='Level of verification for client certificate.'
            }
         }
      }
   }
   definitions={
      tls_action={
         key='string',
         type='integer',
         lua='TLS.ACTION',
         kv={NONE=0,TUNNEL=1,CLOSE=2}
      },
      cert_verification={
         key='string',
         type='integer',
         lua='TLS.VERIFICATION',
         kv={NONE, WARN, REQUIRE}
      }
   }
}
