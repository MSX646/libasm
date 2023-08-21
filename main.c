//#include ""

void ft_putchar(char c);
int ft_putstr(char *s);
int ft_strlen(char *s);
int ft_strcmp(char *s1, char *s2);

int main(void)
{
	char *c = "a";
	ft_putchar('a');	
	ft_putstr("THIS IS PUTSTR SPEAKING\n");
	printf("strlen: %d\n", ft_strlen("SEeeeeeeeeeeeeeeeeeeX"));
	printf("strcmp: %d\n", ft_strcmp("ass", "ass"));
}
