RFBCTV1 <-
function(inputfile)

	{

	zz = readLines( inputfile )

	buildthisvector = NULL

	for (i in 1:length(zz))

		{

		x = brkstr ( zz[i] )

		buildthisvector = append ( buildthisvector, x )

		}

	return (buildthisvector)

	close(zz)

	}
