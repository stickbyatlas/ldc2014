function(doc, req){

	if(! (doc.type && doc.type == "attendee") )
		return [null, JSON.stringify( {error: "Invalid doctype"} )];

	if( ! "CLD" in doc )
		doc["CLD"] = true;
	else
		doc.CLD = ! doc.CLD;

	return [doc, JSON.stringify( doc ) ];

}