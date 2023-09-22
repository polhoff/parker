RFBCTV <-
function(inputfile, outputobject)

	{

	zz = file( inputfile,"r")

	x = readChar(zz,1)

	buildthisvector = NULL
	
	while ( length(x) != 0 )

		{

		if (x!=nl) {  buildthisvector = append(buildthisvector,x)   }
	
		x = readChar(zz,1)

		}

	return (buildthisvector)

	close(zz)

	}
