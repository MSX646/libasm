#ifndef ASM_H
# define ASM_H

void ft_putchar(char c);
int ft_write(int fd, void *buf, size_t count);
int ft_strlen(char *s);
int ft_strcmp(char *s1, char *s2);
char *ft_strcpy(char *dst, char *src);
char *ft_strdup(char *s);
int  ft_read(int fd, char *buf, int count);

#endif
