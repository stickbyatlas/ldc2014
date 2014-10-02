function(doc, req){

	var Mustache = require('lib/mustache');

	return Mustache.render(this.templates.edit_attendees, doc);

}