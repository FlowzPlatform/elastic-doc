GET /pdm/_search
{
   "query": {
      "match_phrase": {"sku_number":"42900"}
   }
}

GET /pdm/_search
{
   "query": {
      "match_all": {}
   }
}

POST /_xpack/security/role/read_write
{
  "indices": [
    {
      "names": [ "pdm","pdmdata","pdm1" ],
      "privileges": [ "read","write" ],
      "query" : {
           "template" : {
          "inline" : {
            "match" : { "vid" : "{{_user.metadata.sid}}"}
          }
        } 
      }
    }
  ]
}
GET /pdm/_search
GET /pdm/_search
{
    "query": {
        "match": {
           "vid": "sup5-1"
        }
    }
}

POST /_xpack/security/user/aakron
{
  "password" : "123456",
  "roles" : [ "read_write"],
  "full_name" : "Aakron",
  "email" : "aakron@example.com",
  "metadata" : {
	"id":5,
	"company":"Aakron Line",
  	"sid":"sup5-1",
	"user_version_history":["sup5-1"]
  },
  "enabled": true
}

POST /_xpack/security/user/chirag
{
  "password" : "123456",
  "roles" : [ "read_write"],
  "full_name" : "Chirag",
  "email" : "chirag@officebrain.com",
  "metadata" : {
	"id":2,
	"company":"Chirag Line",
  	"sid":"sup2-1",
	"user_version_history":["sup2-1"]
  },
  "enabled": true
}

POST /_xpack/security/user/sweda
{
  "password" : "123456",
  "roles" : [ "read_write"],
  "full_name" : "Aakron",
  "email" : "aakron@example.com",
  "metadata" : {
	"id":5,
	"company":"Aakron Line",
  	"sid":"sup5-1",
	"user_version_history":["sup5-1"]
  },
  "enabled": true
}

POST pdm/_delete_by_query
{
  "query": { 
    "match_all": {
      }
  }
}
