
#Bp <- function ( packagename,  topdir = "/media/pp/data1/sp/")
Bp <- function ( packagename,  topdir = NA)
	{
	
	if(is.na(topdir))
		{
		topdir <- dirtop
		}

	dirpackagetop     <-  paste( topdir, "Rpackage/", sep = "")
	dirpackage <- paste(dirpackagetop, packagename, sep = "")


	setwd ( dirpackagetop)

	c_check <-  paste ( "R CMD check      ", dirpackage )
	system (c_check)
 
	c_build <-  paste ( "R CMD build --resave-data      ", dirpackage )
	system (c_build)

	install_string <- paste ( 'install.packages ( paste ( dirdmp, "/", packagename, "_", n_ver, ".tar.gz", sep = ""), type = "source" )')
	}


#Bp ( 'parker', topdir = '/mnt/data1/sp/' )
#Bp ( 'parker', topdir = 'C:/Users/pp/sp/' )
#Bp ( 'Ballycanew.data', topdir = 'C:/Users/pp/sp/' )


#Ipk <- function ( basepk, n_ver, c_lib = '/usr/local/lib/R/site-library/' )
Ipk <- function ( basepk, n_ver)
	{
	c_1 = paste ( basepk, '_', n_ver, '.tar.gz', sep = '')
	#install.packages ( c_1, type = 'source', lib = c_lib)
	install.packages ( c_1, type = 'source')
	}

#Ipk ( 'avon', 2.1 )
#Ipk ( 'parker', 3.2 )
