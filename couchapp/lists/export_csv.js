function(head, req){

	start({
		headers: {
			"Content-Type" : "text/csv",
			"Content-Disposition" : "attachment;filename=attendees.csv"
		}
	});

	send("Name, Surname\n");

	while(row = getRow()){

		send('"' + row.value.name + '", "' + row.value.surname + '"\n');
	}

}