function(doc, old, userCtx){
	if(userCtx.roles.indexOf("_admin") == "-1")
		throw({"forbidden" : "You cannot delete this document."});
}