
LsNew <- function ()
	{
	print (exists ('LsEnv', where = .GlobalEnv))
	print (exists ('a1', where = .GlobalEnv))

	if (!exists ('LsEnv', where = .GlobalEnv))	LsEnv <- new.env(parent = .GlobalEnv)
	#if (!exists ('LsEnv', where = .GlobalEnv))	LsEnv <- new.env(parent =  baseenv())

	print (LsEnv)
	print (parent.env(LsEnv))

	x_ls2 <- ls(sys.frame())
	x_ndx <- try (!x_ls2 %in% LsEnv$x_ls1)
	
	x_ls2_new <-  x_ls2[x_ndx]
	LsEnv$x_ls1 <- x_ls2
	
	return (x_ls2_new)
	}

#LsNew()

















































































































































ListNewObjects <-
function (listobject)

	{

	if ( !exists ( 'l_list', envir = .GlobalEnv )){ l_list = FALSE }
	if ( !exists ( 'listobject', envir = .GlobalEnv )){ listobject = NA }
	if ( l_list==TRUE )

		{
		listobjectnew = ls(sys.frame())

		x = listobjectnew [ is.na ( match(listobjectnew, listobject) ) ]

		asterisks100 = "****************************************************************************************************"

		for (i in 1:2){print (asterisks100)}
		print ( x )
		for (i in 1:2){print (asterisks100)}

		listobject = listobjectnew
		}

	return ( listobject )

	}

listobject = ListNewObjects(listobject)

