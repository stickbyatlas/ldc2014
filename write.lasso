[
	define COUCH_URL => "http://admin:12345@lasso.couchappy.com/ldc2014";

	local( result );
]
<html>
<head>
	<title>LDC 2014 CouchDB Demo</title>
</head>
<body>

[ 

  local( doc ) = map(
 				   "_id"="DEMO_DOC",
				   "type"="attendee",
				   "name"="Ari",
				   "surname"="Najarian"
				 );

  include_url( COUCH_URL, 
	-POSTparams=( json_serialize( #doc ) ),
	-sendMIMEheaders = array('Content-Type'='application/json'));

]

</body>
</html>