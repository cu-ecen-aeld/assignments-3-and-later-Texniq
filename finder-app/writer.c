#include <stdio.h>
#include <syslog.h>
#include <errno.h>

int main(int argc, char const *argv[])
{
    
    openlog("Writer", LOG_CONS | LOG_PERROR | LOG_PID, LOG_USER);

	if( argc<3 )
	{
		syslog(LOG_ERR,"Not enough arguments");
		return 1;
	}

	const char *filename=argv[1];
	const char *str=argv[2];

	errno=0;
	FILE *f=fopen(filename,"w");

	if(errno){
		syslog(LOG_ERR,"Error(%d) while opening file %s",errno,filename);
		return 1;
	}

	syslog(LOG_DEBUG,"Writing %s to %s",str,filename);

	fprintf(f,"%s\n",str);
	
	fclose(f);
	/* code */
	return 0;
}