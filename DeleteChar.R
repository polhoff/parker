DeleteChar <-
function ( c_str, c_delete = " " )

	{

	x = NULL

	for ( i in seq ( along = c_str ) )
	
		{
		
		x[i] = gsub ( " ", "", c_str[i] )
		
		}

	return( x )
	
	}
