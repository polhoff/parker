vlk <-
function (lookupvalue, lookuptable, coloffset)

	{

	vlk =  lookuptable[match(lookupvalue, lookuptable[,1]), coloffset]

	}
