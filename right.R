right <-
function (inputstring, numchar)

	{

	lenstring  =  nchar ( inputstring)

	right  =  substr ( inputstring, lenstring - numchar+1, lenstring )  

	return (right)

	}
