MAKE = make -C
NAME = lem-in
LIB = src/libft/
CFLAGS = -Wall -Wextra -Werror
CC = gcc

MAIN_FILE = main.c
# PARSING_FILES = 
# ALGORITHM_FILES = 
# UTILITIES_FILES =

FILES = $(MAIN_FILE)


OBJECTS = $(FILES:.c=.o)

#These options are here in case the lib needs to be recompiled.
#LIBM, LIBC, LIBF will run rules re, clean and fclean inside the libft folder
LIBM = $(MAKE) $(LIB)
LIBR = $(MAKE) $(LIB) re
LIBC = $(MAKE) $(LIB) clean
LIBF = $(MAKE) $(LIB) fclean

all: $(NAME)

$(NAME):
	# @$(LIBM)
	@$(CC) $(CFLAGS) $(FILES) $(LIB)libft.a -o $(NAME) 
	@echo "Filler: Successfull compilation"

clean:
	# @$(LIBC)
	@/bin/rm -f $(OBJECTS)
	@echo "Filler: Removed .o files"

libftre:
	@$(LIBF)
	@$(LIBM)
	@echo "LIBFT: Library successfully compiled"

fclean: clean
	# @$(LIBF)
	@echo "LIBFT: Removed .a"
	@/bin/rm -f $(NAME)
	@echo "Filler: Removed exacutable"

re: fclean all
