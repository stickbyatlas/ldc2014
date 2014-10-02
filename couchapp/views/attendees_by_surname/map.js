function( doc ){
	if( doc.type == "attendee" )
		emit( doc.surname , doc );
}