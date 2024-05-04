#Pour compiler la lib avec un projet en C "gcc -o tester tester.c -L./ -lasm" -L pour la la localisation de la lib et -l pour son nom sans le lib
AS = nasm
ASFLAGS = -f elf64
NAME = libasm.a
CC = cc
CFLAGS = -Wall -Werror -Wextra
AR = ar rcs
RM = rm -rf
SRC =		ft_strlen.s \
	ft_write.s \
	ft_strcpy.s \
	ft_strcmp.s \
	ft_read.s \
	ft_strdup.s \

OBJ = $(SRC:.s=.o)

%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

all: $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re