function(head, req){

	while(row = getRow()){

		send('<li>' + row.value.name + " " + row.value.surname + "</li>");
	}

}