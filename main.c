#include <stdio.h>

void ft_putchar(char c);
int ft_write(int fd, void *buf, size_t count);
int ft_strlen(char *s);
int ft_strcmp(char *s1, char *s2);

int main(void)
{
	char *c = "a";
	//ft_putchar('a');
	int cunt = ft_write(2, "THIS IS WRITE SPEAKING\n", 23);
    printf("%d\n", cunt);
	printf("strlen: %d\n", ft_strlen("SEeeeeeeeeeeeeeeeeeeX"));
	printf("strcmp: %d\n", ft_strcmp("ass", "ass"));
}
