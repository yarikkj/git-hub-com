function write_in_cicle(fd){
	var i;
	for (i = 1; i <= 15; i++) {
	  ftext = "{key" + String(i) + ": 'value" + String(i) + "}\n";
	  buffer = new Buffer(ftext);
	  write_it(fd, buffer);
	}
}
