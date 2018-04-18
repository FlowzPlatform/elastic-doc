{
	"SKUblankCheck400" : [
		{
			"qry":{
				  "query": {
				    "bool": {
				      "should": [
					{
					  "bool": {
					    "must_not": [
					      {
						"exists": {
						  "field": "SKU"
						}
					      }
					    ]
					  }
					},
					{
					  "match": {
					    "SKU": ""
					  }
					}
				      ]
				    }
				  }
				},
			"bodyBuild": function(){
					bodybuilder()
					  .orQuery("bool",(bodybuilder()
							   .notQuery("exists",'field','SKU')
							   .build()).query.bool
						  )
					  .orQuery('match', 'SKU', '')
					  .build()				
				}
		}	
	]
}
