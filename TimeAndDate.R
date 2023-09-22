
JulianDay <- function ( invector )
	{
	c_class <- class (invector)
	stopifnot ( c_class %in% c ('Date','POSIXct','POSIXt'))
	
	x <- as.Date (invector)
	
	year <- as.integer (as.character (format (x, '%Y')))
	start_day <- as.Date (paste ( year, '-01-01', sep = ''))
	
	n_days <- x - start_day + 1
	
	return (n_days)
	}



JulianDay (as.Date ('2014-05-05'))
JulianDay (as.Date ('2014-01-01'))
JulianDay (as.Date ('2015-12-31'))
















































MakeDate = function( x, as_text = FALSE )
	{	

	y = x

	if ( class(x) == "factor")
		{
		y = as.character(x)
		}

	y1 = as.numeric (substr (y, 1, 4))
	y2 = as.numeric (substr (y, 6, 7))
	y3 = as.numeric (substr (y, 9, 10))
	
	


	c_days = as.character ( c ( paste ( "0", 1:9, sep = ""), 10:31 ) )

	x_date = as.POSIXct ( paste ( y1, y2, y3, sep = '-' ))
	
	return (x_date)
	
	}










































MakeDateChron = function( x, as_text = FALSE )
	{	

	library (chron)

	y  <-  x

	if ( class(x) == "factor")
		{
		y <- as.character(x)
		}
	
	y1 <- dates ( y, format = 'y-m-d' )

	return (y1)
	}

MakeDateChron  ('2013-01-01')



















































#MakeDateTime = function( c_date, c_time, as_text = FALSE, timezone = 'EST' )
MakeDateTime = function( c_date, c_time, as_text = FALSE, timezone =  'Asia/Bangkok', l_GMT = TRUE )
	{	

	library (lubridate)

	y <- c_date
	z <- c_time


	if ( class(y) == "factor")
		{
		y = as.character(y)
		}


	if ( class(z) == "factor")
		{
		z <- as.character(z)
		}

	
	y <- as.Date (y)
	y <- substr (as.character (y), 1, 10)


	#add seconds just in case
	z <-  paste ( z, ':00', sep = '' )
	z <-  substr ( z, 1,8 )


	yz <- paste ( y, z, timezone )

	x_date = as.POSIXct ( yz, tz = timezone )
	#x_date1 = format ( x_date - (7*60*60), tz = 'UTC' )
	
	
	#if (l_GMT){ x_date <- x_date1}
	
	return (x_date)
	}





































































MakeMonthLabel <-
function( date1 )
	{	

	data (parker)
	
	try ( x <- as.Date (date1))
	
	stopifnot ( class (x) == 'Date' )

	y = as.character (format( x, "%d"))
	z = as.numeric ( as.character (format( x, "%m")))
	
	y1 = paste ( y, mnths[z] ) 
	
	return ( y1 )
	}


x2 = as.Date ('1981-01-31')
MakeMonthLabel (x2)


x2 = as.Date ('1981-12-01')
MakeMonthLabel (x2)















































































MakeTime = function( x, as_text = FALSE )
	{	

	y  <-  x

	if ( class(x) == "factor")
		{
		y <- as.character(x)
		}

	y1 <- as.numeric (substr (y, 1, 2))
	y2 <- as.numeric (substr (y, 4, 5))
	
	
	y3 <- try (as.numeric (substr (y, 7, 8)))
	y3[is.na(y3)] <- 0	
	
	seconds_number <-  y3 + (y2 * 60) + y1 * 60 * 60
	
	sec_proportion <- seconds_number / (60*60*24)

	return (sec_proportion)
	}


MakeTime ( '18:00:00')
MakeTime ( '18:00')
MakeTime ( '00:00')
MakeTime ( '01:00')





















































MakeTimeChron = function( x, as_text = FALSE )
	{	

	library (chron)

	y  <-  x

	if ( class(x) == "factor")
		{
		y <- as.character(x)
		}

	
	#add seconds just in case
	y <-  paste ( y, ':00', sep = '' )
	y <-  substr ( y, 1,8 )


	return ( times (y))
	}


MakeTimeChron ( '23:00:01')
MakeTimeChron ( '23:00')















































Month <-
function( x )
	{	
	y = as.character (format( x, "%m"))
	return ( y )
	}






























































TimeAfterMidnight <- function (time)
	{
	stopifnot (class (time) == 'character')
	
	MakeHours <- function (inchar)
		{
		x <- unlist (strsplit (inchar, ':'))
		x1 = try (as.numeric (x[1]) * 60 * 60)
		x2 = try (as.numeric (x[2]) * 60)
		x3 = try (as.numeric (x[3]))
		
		x4 <- (x1 + x2 + x3)/(60*60)
		}
	
	
	sapply ( time, MakeHours )

	}

TimeAfterMidnight ('12:30:00')
































































Year <-
function( x, as_text = FALSE )
	{	

	if ( class(x) == "date")
		{
		y = as.numeric(format(as.POSIXct(x), "%Y"))
		}
	
	if ( class(x) [1] == "POSIXt")
		{
		y = as.numeric (format( x, "%Y"))
		}

	if (as_text)
		{
		x_match = match ( y, c_match )
		y1 = c_mnth[x_match]
		return(y1)
		}
	
	if (as_text == FALSE ) {	return(y) }
	}
