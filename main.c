#include <stdlib.h>
#include <stdio.h>

void ft_putchar(char c);
int ft_write(int fd, void *buf, size_t count);
int ft_strlen(char *s);
int ft_strcmp(char *s1, char *s2);
char *ft_strcpy(char *dst, char *src);
char *ft_strdup(char *s);

int main(void)
{
	char *str = "YOOOOOO";
	char *str2 = "BOOOOOO";
	int cunt = ft_write(2, "THIS IS WRITE SPEAKING\n", 23);
    	printf("WRITE: %d\n", cunt);
	printf("strlen: %d\n", ft_strlen("EeeeeeeeeeeeeeeeeeeXD"));
	printf("strcmp: %d\n", ft_strcmp("sas", "sas"));
	printf("strdup: %s\n", ft_strdup(str2));
	
	char *cpy = malloc(ft_strlen(str));
	printf("strcpy: %s\n", ft_strcpy(cpy, str));

	free(cpy);	
}
