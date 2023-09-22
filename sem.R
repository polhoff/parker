sem <-
function ( c_from = "simon.parker02@imperial.ac.uk", c_to = "simon_ecc@yahoo.co.uk", c_server = "smtp.cc.ic.ac.uk", message_file = "D:/sp/message.txt" )

	{
	
	x = NULL
	
	x = paste ( "C:/other_apps/SE/sendEmail -f  ", c_from, " -o message-file=", message_file, " -t ", c_to, " -s ", c_server, sep = "" )
	
	write ( x, file = "D:/sp/dump/message.bat" )
	
	shell ( "D:/sp/dump/message.bat" )
	
	}
