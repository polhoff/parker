wr <-
function ( outobj = c_out, outdir = dirout )
	{
	write ( c_out, file = paste ( dirout, "d.bat", sep = "" ) )
	system ( paste ( outdir, "d.bat", sep = "" ) )
	print ( paste ("output to ", outdir, sep = "" ) )
	}
