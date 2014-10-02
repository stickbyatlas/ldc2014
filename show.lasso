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
  // DISPLAY A PREFORMATTED SINGLE DOCUMENT
    include_url(
     COUCH_URL + "/_design/attendees/_show/view_attendees/DEMO_DOC"
    );
]

<br/></br/>

[
	// A DIFFERENT SHOW FUNCTION
    include_url(
     COUCH_URL + "/_design/attendees/_show/edit_attendees/DEMO_DOC"
    );
]

</body>
</html>