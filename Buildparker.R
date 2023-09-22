
#Buildparker <- function(n_ver, topdir = "/mnt/data1/sp/")

Buildparker <- function(n_ver, topdir = "D:/sp/")
	{
	try (library(roxygen2))
	try (library(tools))
	try (library(inlinedocs))
	try (library(devtools))


	dirtop <- topdir

	dirpackagetop     <-  paste( dirtop, "Rpackage/", sep = "")
	packagename <- "parker"


	dirpackage <- paste(dirpackagetop, packagename, sep = "")


	setwd ( dirpackagetop)


	c_check <-  paste ( "R CMD check      ", dirpackage )
	system (c_check)
 
	c_build <-  paste ( "R CMD build --resave-data      ", dirpackage )
	system (c_build)

	install_string <- paste ( 'install.packages ( paste ( dirdmp, "/", packagename, "_", n_ver, ".tar.gz", sep = ""), type = "source" )')

	return (install_string)
	}

#x1 <- Buildparker (3.2)
#x1 <- Buildparker (3.2, topdir = '/mnt/data1/sp/')
#install.packages ('parker_3.2.tar.gz', type = 'source', lib = '/usr/local/lib/R/site-library')
