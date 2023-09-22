InsertChar <-
function ( c_str, c_insert = " " )

	{

	x = NULL

	for ( i in seq ( along = c_str ) )
	
		{
		
		n_len = nchar ( c_str[i] )

		line_with_spaces = NULL

		for (j in 1:n_len)

			{

			line_with_spaces = append ( line_with_spaces, substr ( c_str[i], j, j ) )

			}
		
		x[i] = paste ( line_with_spaces, collapse = c_insert )
		
		#return(SplitToSingle)


		}

	return( x )
	
	}
