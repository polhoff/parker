Labels1 <-
function()

	{	

	a = 0:9
	aa = expand.grid(a,a,a,a)[,4:1]
	bb = paste ( aa[,1], aa[,2], aa[,3], aa[,4], sep="")

	bb = bb[-grep("0000",bb)]

	return ( bb )

	}
