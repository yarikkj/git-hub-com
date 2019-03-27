console.log('My first script')
const fs = require('fs');
var fpath = "/home/yarik/Projects/jsscript/test.json"

function write_it(fd, buffer) {
    fs.write(fd, buffer, 0, buffer.length, null, function(err) {
        if (err) throw 'error writing file: ' + err;

    });
}

function write_in_cicle(fd){
	var i;
	for (i = 1; i <= 15; i++) {
	  ftext = "{key" + String(i) + ": 'value" + String(i) + "}\n";
	  buffer = new Buffer(ftext);
	  write_it(fd, buffer);
	}
}

function close_process(fd){
	fs.close(fd, function() {
      console.log('file written');
	})
}
// main programm
fs.open(fpath, 'w', function(err, fd) {
	if (err) {
        throw 'error opening file: ' + err;
    }

	write_in_cicle(fd);

    close_process(fd);
});

