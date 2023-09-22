Rmatrix <-
function(x=xinthisexample)


	{

	xdim = dim(x)

	m_return = x

	for (i in 2:xdim[1]-1)

		{

		for (j in 2:xdim[2]-1)

			{

			a1 = x[i,j]

			a2 = x[i-1,j]		

			a3 = x[i+1,j]

			a4 = x[i,j-1]

			a5 = x[i,j+1]

			m_return[i,j]  =  a1 - min(a1,a2,a3,a4,a5)

			}

		}
	
	return (m_return)

	}
