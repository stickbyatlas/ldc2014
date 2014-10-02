function(doc, req){

	var Mustache = require('lib/mustache');
	var routes = require('lib/routes').backends;

	var stash = [];

	if( (req.userCtx.roles.indexOf("admin") != -1) || (req.userCtx.roles.indexOf("_admin") != -1)){

		for(var n in routes){
			stash.push(routes[n]);
		}

	}
	else{
		req.userCtx.roles.forEach(function(item){
			stash.push(routes[item]);
		});	
	}

	return Mustache.render(this.templates.backend_list, {routes: stash});

}
