#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include "asm.h"

int main(void)
{
	char file[4000];
	char *str = "YOOOOOO";
	char *str2 = "BOOOOOO";
	int cunt = ft_write(2, "THIS IS WRITE SPEAKING\n", 23);
    	printf("write: %d\n", cunt);
	printf("strlen: %d\n", ft_strlen("EeeeeeeeeeeeeeeeeeeXD"));
	printf("strcmp: %d\n", ft_strcmp("sas", "sas"));
	printf("strdup: %s\n", ft_strdup(str2));
	
	char *cpy = malloc(ft_strlen(str));
	printf("strcpy: %s\n", ft_strcpy(cpy, str));

	int fd = open("./ft_read.asm", O_RDONLY);
	ft_read(fd, file, 50);
	printf("read: %s\n", file);

	free(cpy);	
}
