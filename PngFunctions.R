
PngOff.Arc <- function (x = l_png | l_tif | l_jpg)
	{
	if (x) {dev.off()}
	}





PngOff <- function ()
	{
	dev.off()
	}



































































PngOnW <-
function ( outfile = pngfilename, ptype = "land", outdir = dirdmp, x = l_png, y = l_pst, z = l_pdf )

	{

	#check
	if ( x ) { y = FALSE; z = FALSE }

	if ( x )

		{

		if (ptype == "land")

			{

			png(filename = paste (outdir, outfile, sep=""),
			width = 1060,
			height = 400,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		else 

			{

			
			png(filename = paste (outdir, outfile, sep=""),
			width = 400,
			height = 1060,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		}

	
	if ( y )

		{
		
		postscript ( file = paste(outdir, pngfilename, ".ps",sep=""), paper="a4", horizontal = TRUE, onefile = TRUE )

		}


	if ( z )
		{
		pdf(file = paste( outdir, pngfilename, ".pdf",sep=""), width = 11, height = 8 , onefile = TRUE, paper = "a4")
		}
	
	print ( paste ( "output file is ", paste ( outdir, outfile, sep = "" ), sep = "" ) )
		
	}





























































PngOn = function ( outfile = pngfilename, ptype = "land", outdir = dirdmp, n_height  =   800, n_width = 1060, n_res = NA )

	{

		if (ptype == "land")

			{

			png(filename = paste (outdir, outfile, sep=""),
			width = n_width,
			height =  ( n_height * 1),
			units = "px",
			pointsize = 15,
			bg = "white",
			res = n_res)
			#print ("hhh")

			}
		else 

			{

			
			png(filename = paste (outdir, outfile, sep=""),
			width = n_height,
			height = n_width,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = n_res)

			}

	
	print ( paste ( "output file is ", paste ( outdir, outfile, sep = "" ), sep = "" ) )

	}
















































































































































PngOn.Arc = function ( outfile = pngfilename, ptype = "land", outdir = dirdmp, x = l_png, y = l_pst, z = l_pdf, z1 = l_jpg,  n_height  =   800, n_width = 1060, n_res = NA )

	{

	#check
	if ( x ) { y = FALSE; z = FALSE }

	if ( x )

		{

		if (ptype == "land")

			{

			png(filename = paste (outdir, outfile, sep=""),
			width = n_width,
			height =  ( n_height * 1),
			units = "px",
			pointsize = 15,
			bg = "white",
			res = n_res)
			#print ("hhh")

			}
		else 

			{

			
			png(filename = paste (outdir, outfile, sep=""),
			width = n_height,
			height = n_width,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = n_res)

			}

		}

	
	if ( y )

		{
		postscript ( file = paste(outdir, pngfilename, ".ps",sep=""), paper="a4", horizontal = TRUE, onefile = TRUE )
		}


	if ( z )
		{
		pdf(file = paste( outdir, pngfilename, ".pdf",sep=""), width = 11, height = 8 , onefile = TRUE, paper = "a4")
		}
	

	if ( z1 )
		{
		jpeg(filename = paste (outdir, outfile, sep=""),
		width = n_width, height  =  n_height,
		quality = 100
		)
		}

	print ( paste ( "output file is ", paste ( outdir, outfile, sep = "" ), sep = "" ) )

	}


















































































PngOn1 <-
function ( outfile = pngfilename, ptype = "land", outdir = dirdmp, x = l_png, y = l_pst, z = l_pdf, z1 = l_jpg )

	{

	#check
	if ( x ) { y = FALSE; z = FALSE }

	if ( x )

		{

		if (ptype == "land")

			{

			png(filename = paste (outdir, outfile, sep=""),
			width = (1060*1),
			height = (600*1),
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		else 

			{

			
			png(filename = paste (outdir, outfile, sep=""),
			width = 800,
			height = 1060,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		}

	
	if ( y )

		{
		postscript ( file = paste(outdir, pngfilename, ".ps",sep=""), paper="a4", horizontal = TRUE, onefile = TRUE )
		}


	if ( z )
		{
		pdf(file = paste( outdir, pngfilename, ".pdf",sep=""), width = 11, height = 8 , onefile = TRUE, paper = "a4")
		}
	

	if ( z1 )
		{
		jpeg(filename = paste (outdir, outfile, sep=""),
		width = 1060, height = 800,
		quality = 75
		)
		}

	print ( paste ( "output file is ", paste ( outdir, outfile, sep = "" ), sep = "" ) )

	}














































































PngOn2 <- function ( outfile = pngfilename, ptype = "land", outdir = dirdmp, x = l_png, y = l_pst, z = l_pdf, z1 = l_jpg )

	{

	#check
	if ( x ) { y = FALSE; z = FALSE }

	if ( x )

		{

		if (ptype == "land")

			{

			png(filename = paste (outdir, outfile, sep=""),
			width = (1060*1),
			height = (400*1),
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		else 

			{

			
			png(filename = paste (outdir, outfile, sep=""),
			width = 800,
			height = 1060,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		}

	
	if ( y )

		{
		postscript ( file = paste(outdir, pngfilename, ".ps",sep=""), paper="a4", horizontal = TRUE, onefile = TRUE )
		}


	if ( z )
		{
		pdf(file = paste( outdir, pngfilename, ".pdf",sep=""), width = 11, height = 8 , onefile = TRUE, paper = "a4")
		}
	

	if ( z1 )
		{
		jpeg(filename = paste (outdir, outfile, sep=""),
		width = 1060, height = 800,
		quality = 75
		)
		}

	print ( paste ( "output file is ", paste ( outdir, outfile, sep = "" ), sep = "" ) )

	}


















































PngOn550 <-
function ( outfile = pngfilename, ptype = "land", outdir = dirdmp, x = l_png, y = l_pst, z = l_pdf, z1 = l_jpg )

	{

	#check
	if ( x ) { y = FALSE; z = FALSE }

	if ( x )

		{

		if (ptype == "land")

			{

			png(filename = paste (outdir, outfile, sep=""),
			width = (1060*1),
			height = (550*1),
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		else 

			{

			
			png(filename = paste (outdir, outfile, sep=""),
			width = 800,
			height = 1060,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		}

	
	if ( y )

		{
		postscript ( file = paste(outdir, pngfilename, ".ps",sep=""), paper="a4", horizontal = TRUE, onefile = TRUE )
		}


	if ( z )
		{
		pdf(file = paste( outdir, pngfilename, ".pdf",sep=""), width = 11, height = 8 , onefile = TRUE, paper = "a4")
		}
	

	if ( z1 )
		{
		jpeg(filename = paste (outdir, outfile, sep=""),
		width = 1060, height = 800,
		quality = 75
		)
		}

	print ( paste ( "output file is ", paste ( outdir, outfile, sep = "" ), sep = "" ) )

	}





















































































PngOnLand <-
function ( outfile = pngfilename, ptype = "land", outdir = dirdmp, x = l_png, y = l_pst, z = l_pdf, z1 = l_jpg,  n_height  =   800, n_width =  1130)

	{

	#if ( n_width ==1130 ){}
	#if ( n_width !=1130 ){n_width = 297/210 * n_height}
	
	#check
	if ( x ) { y = FALSE; z = FALSE }

	if ( x )

		{

		if (ptype == "land")

			{

			png(filename = paste (outdir, outfile, sep=""),
			width = ( n_width*1),
			height =  ( n_height * 1),
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		else 

			{

			
			png(filename = paste (outdir, outfile, sep=""),
			width = n_height,
			height = 1060,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		}

	
	if ( y )

		{
		postscript ( file = paste(outdir, pngfilename, ".ps",sep=""), paper="a4", horizontal = TRUE, onefile = TRUE )
		}


	if ( z )
		{
		pdf(file = paste( outdir, pngfilename, ".pdf",sep=""), width = 11, height = 8 , onefile = TRUE, paper = "a4")
		}
	

	if ( z1 )
		{
		jpeg(filename = paste (outdir, outfile, sep=""),
		width = 1060, height  =  n_height,
		quality = 75
		)
		}

	print ( paste ( "output file is ", paste ( outdir, outfile, sep = "" ), sep = "" ) )

	}


















































































PngOnSquare <-
function ( outfile = pngfilename, ptype = "land", outdir = dirdmp, x = l_png, y = l_pst, z = l_pdf )

	{

	#check
	if ( x ) { y = FALSE; z = FALSE }

	if ( x )

		{

		if (ptype == "land")

			{

			png(filename = paste (outdir, outfile, sep=""),
			width = 800,
			height = 800,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		else 

			{

			
			png(filename = paste (outdir, outfile, sep=""),
			width = 800,
			height = 800,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		}

	
	if ( y )

		{
		
		postscript ( file = paste(outdir, pngfilename, ".ps",sep=""), paper="a4", horizontal = TRUE, onefile = TRUE )

		}


	if ( z )
		{
		pdf(file = paste( outdir, pngfilename, ".pdf",sep=""), width = 8, height = 8 , onefile = TRUE, paper = "a4")
		}
	
	print ( paste ( "output file is ", paste ( outdir, outfile, sep = "" ), sep = "" ) )
		
	}























































































Png <- function ( outfile = pngfilename, ptype = "land", outdir = dirdmp, pick1, pick2, n_height  =  600 )

	{
	#check
	#if ( pick1 ) { y = FALSE; z = FALSE }

	if ( pick1 )

		{

		if (ptype == "land")

			{

			png(filename = paste (outdir, outfile, sep=""),
			width = (1060*1),
			height =  ( n_height * 1),
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)
			#print ("hhh")

			}
		else 

			{

			
			png(filename = paste (outdir, outfile, sep=""),
			width = n_height,
			height = 1060,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA)

			}

		}

	#width = 1060, height = n_height, units = "px", pointsize = 12,
	if ( pick2 )
		{

		if (ptype == "land")

			{


			tiff (filename = paste (outdir, outfile, sep=""),
			width = (1060*1),
			height =  ( n_height * 1),
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA
			)
			
			}
		else 

			{
			tiff (filename = paste (outdir, outfile, sep=""),
			width = n_height,
			height = 1060,
			units = "px",
			pointsize = 15,
			bg = "white",
			res = NA
			)
			}

		}

		
	print ( paste ( "output file is ", paste ( outdir, outfile, sep = "" ), sep = "" ) )
	}























































Pnh <- function (off)
	{
	if (off) {dev.off()}
	}

