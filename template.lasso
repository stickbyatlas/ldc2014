[
	define COUCH_URL => "http://admin:12345@lasso.couchappy.com/ldc2014";

	local( result );
]
<html>
<head>
	<title>LDC 2014 CouchDB Demo</title>
</head>
<body>

<ul>
[ 
  // DISPLAY PRE-FORMATTED DATA FROM A LIST FUNCTION
    include_url(
     COUCH_URL + "/_design/attendees/_list/attendee_cards/attendees_by_surname"
    );
]
</ul>

</body>
</html>