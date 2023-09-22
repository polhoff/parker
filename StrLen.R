StrLen <-
function ( inputstring )

	{

	x = TRUE

	i = 1

	while ( x )

		{
	
		a = substr ( inputstring, 1, i )

		b = substr ( inputstring, 1, i + 1 )

		x = (a != b)

		i = i + 1

		}

	return ( i-1 )

	}
