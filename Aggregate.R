
Aggregate <- function ( indata, class_var, anal_var, c_fun = 'median' )
	{
	#class_var = 'date1'
	#anal_var  = 'DO'
	#c_fun = 'median'
	#f_fun = get(c_fun)
	
	library(plyr)

	data_sub <- indata[,c ( class_var, anal_var)]
	names(data_sub) <- c ('class_var', 'anal_var')
	print('x')
	print(head(data_sub))

	print(c_fun)
	#data_sub_out <-  ddply ( data_sub, .(class_var), summarize, c_fun = do.call( get(c_fun), list(anal_var)))

	if (c_fun == 'median')
		{
		data_sub_out <-  ddply ( data_sub, .(class_var), summarize, c_fun = median(anal_var))
		}
	
	if (c_fun == 'mean')
		{
		data_sub_out <-  ddply ( data_sub, .(class_var), summarize, c_fun = mean(anal_var))
		}
	
	if (c_fun == 'max')
		{
		data_sub_out <-  ddply ( data_sub, .(class_var), summarize, c_fun = max(anal_var))
		}
	
	if (c_fun == 'min')
		{
		data_sub_out <-  ddply ( data_sub, .(class_var), summarize, c_fun = min(anal_var))
		}
	
	
	names(data_sub_out) <- c (class_var, paste (anal_var, c_fun, sep = '.'))

	#print(data_sub_out)
	return(data_sub_out)
	}


#xxs <- Aggregate ( indata, 'date1', anal_var = 'DO', c_fun = 'median' )
#head(xxs)

















































































Aggregate_arc3 <- function ( indata, class_var, anal_var, c_fun = 'median' )
	{
	#class_var = 'date1'
	#anal_var  = 'DO'
	#c_fun = 'median'
	library(plyr)

	
	ThisEnv <- new.env()
	ThisEnv$f_fun = get(c_fun)
	


	data_sub <- indata[,c ( class_var, anal_var)]
	names(data_sub) <- c ('class_var', 'anal_var')
	print('x')
	print(head(data_sub))


	#ThisEnv$f_fun <- f_fun
	ThisEnv$data_sub <- data_sub
	ThisEnv$ddply <- ddply

	#data_sub_out <-  ddply ( data_sub, .(class_var), summarize, c_fun = do.call( f_fun, list(anal_var)))
	#data_sub_out <-  ThisEnv$ddply ( data_sub, .(class_var), summarize, c_fun = ThisEnv$f_fun(anal_var))

	names(data_sub_out) <- c (class_var, paste (anal_var, c_fun, sep = '.'))

	#print(data_sub_out)
	return(data_sub_out)
	}


#xxs <- Aggregate ( indata, 'date1', anal_var = 'DO', c_fun = 'median' )
#head(xxs)




















































Aggregate_arc2 <- function ( indata, class_var, anal_var, c_fun = 'median' )
	{
	#class_var = 'date1'
	#anal_var  = 'DO'
	#c_fun = 'median'
	f_fun = get(c_fun)
	
	library(plyr)

	data_sub <- indata[,c ( class_var, anal_var)]
	names(data_sub) <- c ('class_var', 'anal_var')
	print('x')
	print(head(data_sub))

	data_sub_out <-  ddply ( data_sub, .(class_var), summarize, c_fun = do.call( f_fun, list(anal_var)))

	names(data_sub_out) <- c (class_var, paste (anal_var, c_fun, sep = '.'))

	#print(data_sub_out)
	return(data_sub_out)
	}


#xxs <- Aggregate ( indata, 'date1', anal_var = 'DO', c_fun = 'median' )
#head(xxs)









































Aggregate_arc1 <- function ( indata, class_var, anal_var, c_fun = 'median' )
	{
	#class_var = 'date1'
	#anal_var  = 'DO'
	#c_fun = 'median'
	print('x')
	#x_ndx <- names(indata) %in% c(class_var, anal_var)
	#x_ndx <- match (c(class_var, anal_var), names(indata))
	#data_sub <- indata[,names(indata)[x_ndx]]
	#data_sub <- indata[x_ndx]
	#data_sub <- indata[names(indata)[x_ndx]]
	
	data_sub <- indata[,c ( class_var, anal_var)]
	names(data_sub) <- c ('class_var', 'anal_var')
	print('x')
	print(head(data_sub))

	
	library(plyr)

	#data_sub_out <-  ddply (indata[c ( class_var, anal_var)], .(get(class_var)), summarize, c_fun = do.call( c_fun, list(get(anal_var))))

	data_sub_out <-  ddply ( data_sub, .(class_var), summarize, c_fun = do.call( c_fun, list(anal_var)))

	names(data_sub_out) <- c (class_var, paste (anal_var, c_fun, sep = '.'))

	#print(data_sub_out)
	return(data_sub_out)
	}


#xxs <- Aggregate ( indata, 'date1', anal_var = 'DO', c_fun = 'median' )
#head(xxs)
