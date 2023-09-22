Crds <-
function ( in_data )
	{
	in_data$xyloc =  with ( in_data, paste ( format ( xloc, scientific = FALSE ), format ( yloc, scientific = FALSE ), sep = " " ))
	
	return ( in_data )
	}
