Labels2 <-
function()

	{	

	a = 0:9
	aa = expand.grid(a,a,a,a,a,a)[,6:1]
	bb = paste ( aa[,1], aa[,2], aa[,3], aa[,4], aa[,5], aa[,6], sep="")

	bb = bb[-grep("000000",bb)]

	return ( bb )

	}
