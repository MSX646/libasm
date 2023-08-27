NAME = libasm.a

CC = gcc
CFLAGS = -Wall -Werror -Wextra -L. -lasm -I.
ASM = nasm
ASMFLAGS = -felf64
AR = ar crs
RM = rm -rf

SRC = ft_putchar.asm ft_read.asm ft_strcmp.asm ft_strcpy.asm ft_strdup.asm ft_strlen.asm ft_write.asm

OBJ = $(patsubst %.asm,%.o,$(SRC))

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $?

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

test: $(NAME) main.c
	$(CC) main.c $(HEADER) $(CFLAGS) -o testing

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME) test

re: fclean all

.PHONY: all test clean fclean re
