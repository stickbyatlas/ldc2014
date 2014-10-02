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

  // QUERY A VIEW AS A NATIVE LASSO MAP
  local( "attendees" ) = json_deserialize(
    include_url(
     COUCH_URL + "/_design/attendees/_view/attendees_by_surname"
    )
  )->find("rows")->asstaticarray;

  (with a in #attendees select #a->find( "value" ) );
  
]

</body>
</html>