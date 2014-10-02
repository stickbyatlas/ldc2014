function(doc, req){

	var Mustache = require('lib/mustache');

	return Mustache.render("<h3>{{name}} {{surname}}</h3>", doc);

}