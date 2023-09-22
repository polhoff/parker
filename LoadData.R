
ListData <- function (c_package)
	{
	x = data( package = c_package )
	
	data_sets <- as.character (x[3]$results[,3])
	x_ndx <- grep ( '[(]', data_sets )
	
	data_sub <- data_sets[x_ndx]
	
	x2 <- matrix (unlist (strsplit(data_sub, '[(]')), ncol = 2, byrow = TRUE)
	#print (x2)
	#print (x2[,1])
	#print (class(x2[,1]))
    #x_ndx <- grep (

	data_sets_df <- data.frame ('Data' = data_sets, stringsAsFactors = FALSE)
	print (class (data_sets_df$Data))
	data_sets_df$source <- ''
	data_sets_df$source[x_ndx] <- as.character (x2[,2])
	
	#print (data_sets_df)
	data_sets_df$Data[x_ndx] <- as.character (x2[,1])
	data_sets_df$Data <- gsub (' ', '', data_sets_df$Data)
	data_sets_df$source <- gsub ('[)]', '', data_sets_df$source)
	
	print (data_sets_df)
	return (data_sets_df)
	}

#dataSets <- parker::ListData('mdot.data')























































LoadData <- function (c_package, rownumber)
	{
	#make library available to this function
	do.call ( library, list (c_package))
	x <- ListData(c_package)
	
	x_source <- x[rownumber,2]
	x_data <- x[rownumber,1]
	
	x_source[x_source == ''] <- x_data
	
	
	do.call ( data, list (x_source))
	get_data <- get ( x_data )
	
	print (str (get_data))
	print (head (get_data,2))
	
	return (get_data)
	}

#indata <- parker::LoadData('mdot.data', 3)
#indata <- LoadData (1)

































GetIndata <- function (c_dataset, c_library)
	{
	#indata <- Ebble_CE1_2013_04_25
	#c_library <- mdot
	#library (mdot); data (Minidot_02); indata <- Minidot_02; n_quality = 14; c_indata <- 'Minidot_02'
	

	#dirscr <- paste ( dirtop, '/DO/rovscript/', sep = '')
	
	#library(mdot)
	library (parker)
	data (parker)
	
	do.call ( library, list (c_library))
	
	DataSets <- parker::ListData (c_library)
	rownumber <- which (DataSets[,1] == c_dataset)
	print (rownumber)
	#return (rownumber)
	indata <- parker::LoadData (c_library, rownumber)
	return(indata)
	}

#indata <- GetIndata ('Ebble_CE1_2013_04_25', 'rovelli.data')
