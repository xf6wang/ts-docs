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
         },
         cname= {
            type= "string",
            description= "Schema name, used as container class name.",
         },
         type={
            type="string",
            enum={'null', 'boolean', 'object', 'array', 'number', 'string'}
         },
         properties={
            type="object",
            additionalProperties:{
               type:'object',
               description:''
            },
            additionalProperties=true
         },
         description= {
            type="string",
            description="Description for configuration value."
         }
      }
   }
}
