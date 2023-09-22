Day <-
function( x, as_text = FALSE )
	{	

	c_days = as.character ( c ( paste ( "0", 1:9, sep = ""), 10:31 ) )

	if ( class(x) == "date")
		{
		y = as.numeric(format(as.POSIXct(x), "%d"))
		}
	
	if ( class(x) [1] == "POSIXt")
		{
		y = as.numeric (format( x, "%d"))
		}

	if (as_text)
		{
		y1 = c_days[ y ]
		return(y1)
		}
	
	if (as_text == FALSE ) {	return(y) }
	}
