BEGIN {
	FS="{"	
	}
	{
if ($2 ~ /chapter}/)
{print (substr($3,1,length($3)-1)),(substr($4,1,length($4)-1))}
		}

