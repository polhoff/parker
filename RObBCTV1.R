RObBCTV1 <-
function(inputobject)

	{

	buildthisvector = NULL

	for (i in 1:length(inputobject))

		{

		x = brkstr ( inputobject[i] )

		buildthisvector = append ( buildthisvector, x )

		}

	return (buildthisvector)

	close(zz)

	}
