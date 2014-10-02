[
	define COUCH_URL => "http://admin:12345@lasso.couchappy.com/ldc2014";

]
<html>
<head>
	<title>LDC 2014 CouchDB Demo</title>
</head>
<body>

[ 

  // USE AN UPDATE HANDLER
  include_url( COUCH_URL + "/_design/attendees/_update/toggle_CLD/DEMO_DOC" ,
  	-postparams=array("",""),
  	-sendmimeheaders=array("Content-type"="application/json")
  );

]

</body>
</html>