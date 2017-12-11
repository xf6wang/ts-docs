{
   ['$scheme']= "http://trafficsever.apache.org/config/schema",
   description = "Lua Configuration MetaSchema",
   global = 'schema',
   class = 'TsLuaMetaConfig',
   type = "object",
   properties = {
      ["$schema"] = {
         type= "string",
         description= "Schema identifier."
      },
      description = {
         type= "string",
         description= "Description of the schema.",
      },
      global = {
         type = 'string',
         description = 'Lua global variable in which the schema will be stored.'
      },
      class = {
         type = 'string',
         description = 'C++ class for configuration.'
      },
      type = {
         type= ='string',
         enum = { 'null', 'boolean', 'object', 'array', 'number', 'string', 'enum' }
      },
      properties={
         variant = {'type', 'object' },
         type = 'object',
         description = 'The members of the object.',
         additionalProperties = true,
         minProperties = 1,
         properties = {}
      },
      items = {
         variant = {'type', 'array'},
         type = 'array',
         description = 'The items in the array.',
         additionalItems = true,
         minItems = 1,
         items = {}
      },
      definitions = {
         type = 'array',
         description = 'Sub schema definitions.',
         items = {
            type = 'object',
            description = 'Description of the definition.',
            additionalProperties = true
         }
      }
   }
}
