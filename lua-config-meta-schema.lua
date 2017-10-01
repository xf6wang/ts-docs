{
   "$scheme"= "http://trafficsever.apache.org/config/schema",
   name= "Lua Configuration Schema",
   type= "array",
   items= {
      type= "object",
      properties= {
         ["$schema"]= {
            type= "string",
            description= "Schema identifier."
         }
         cname= {
            type= "string",
            description= "Schema name, used as container class name.",
         },
         properties= {
            type="object",
            additionalItems=true
         },
         name= {
            type="string",
            description="Name of configuration value."
         },
         description= {
            type="string",
            description="Description for configuration value."
         }
      }
   }
}
