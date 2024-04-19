NAME = libftprintf.a

FLAGS = -Wall -Wextra -Werror
CC = cc
AR = ar rcs

SRC = ft_printf.c \
		format.c \
		ft_printptr.c \

OBJ = $(SRC:.c=.o)

GREEN = \033[0;92m
YELLOW = \033[0;93m
CYAN = \033[0;96m
RED = \033[0;31m
MAGENTA = \033[38;5;208m
DEF_COLOR = \033[0;39m

all: $(NAME) aslan

$(NAME): $(OBJ)
	@$(CC) $(FLAGS) -c $(SRC)
	@$(AR) $(NAME) $(OBJ)
	@echo "$(GREEN)Compiled. Files are READY!!!$(DEF_COLOR)"
	
aslan:
		@echo " $(MAGENTA)              ⢀⣀⡠⣀⢄⡀⢬⢩⡑⢄⡠⣊⡝⠇⣀⡀⣄⢠⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠀⠀⠀⠀⠀⠀⣀⡤⣤⠏⢀⣈⠨⣮⠪⡥⠆⣯⠜⡱⢿⠠⠼⣑⣕⠎⣁⢀⢹⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠀⠀⢀⡴⡚⢩⣢⡒⢔⠕⡥⡽⢡⡑⢧⢦⣥⢸⡼⢴⡇⡼⡴⡱⢋⡜⠪⡍⠪⣢⢒⣜⠍⣒⢄⡀⠀⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠀⠀⢯⣄⣔⡤⠤⢔⣌⣉⠾⠜⣷⡱⠊⢦⡹⣚⡎⢶⣓⢧⠝⢰⢥⣻⠧⠞⣡⢡⡤⠤⢖⡨⡠⡿⠀⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠀⣰⢏⡾⢁⣴⣷⣶⣉⣟⡶⣢⣬⠷⣽⣾⣷⣟⣿⣿⣿⣾⣯⣷⢮⣥⣔⣞⣿⣩⣶⣳⣦⡉⢷⡹⣆⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⢰⠃⣺⣇⠸⣽⣿⠟⣱⣪⣽⣿⡿⡫⠭⢍⠻⣷⣿⣿⣾⠟⣩⠭⢟⢿⣿⣾⢱⢎⢿⣿⣷⡁⣸⢇⠘⡆⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠈⠲⢬⡹⢧⣜⡿⣩⣯⢾⣿⣿⠎⠀⠀⠀⠑⠙⠛⠛⠣⠊⠀⠀⠀⠱⣿⣿⡷⣏⡌⢿⣠⣴⢋⡶⠓⠁⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⢀⡴⠋⢔⠸⣎⡇⣶⣣⢿⣿⠋⠀⢀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠂⡀⠀⠙⣿⡾⣝⡞⢸⡹⡄⠮⡙⢦⡀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⢳⠞⡚⡬⣮⠗⣰⢟⣷⡿⠃⢐⠺⡹⢽⡄⠀⠀⠀⠀⠀⠀⢠⡿⠝⠖⣂⠘⢿⣾⢻⣂⠻⣔⢵⡓⠷⡞⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⢀⠯⣨⣳⠿⢋⠴⣹⣺⡽⠁⠠⡘⢆⠉⠙⡆⠀⠀⠀⠀⠀⠀⢘⠋⢉⡰⠃⠀⠘⢿⣣⢟⢦⡙⠶⣧⣕⠹⡀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠑⢍⠡⡄⢢⢼⠙⣡⢿⡧⠀⠀⠑⠄⠀⢸⠇⠀⠀⠀⠀⠀⠀⠸⡆⠁⠀⠀⠀⠀⣿⣏⣎⠲⡥⡂⢄⠜⡡⠊$(DEF_COLOR)"
		@echo "$(MAGENTA)	⣀⠜⡔⠵⠌⠾⠰⢏⣾⡧⡐⠀⡀⠀⢀⡜⠀⠀⠀⠀⠀⠀⠀⠀⢣⡀⠀⠀⠀⣠⣿⡯⡝⠦⠧⠧⠼⢰⢣⣀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⢫⡰⢜⢩⡭⢽⡿⢭⣻⢿⣴⠥⠘⣦⡎⡀⠀⣀⠀⠀⠀⠀⣀⠀⢀⢱⡀⠠⢰⣼⡿⣟⡭⢻⢭⣹⠎⣣⣂⡜$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠳⡜⣅⢹⢂⡷⣱⢟⣿⣿⣿⣢⣼⠃⠑⠾⣯⣗⣒⣖⣿⣽⡷⠊⠸⣧⢼⣿⣿⣯⡻⣬⢷⡂⣫⠮⣶⠎⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⢰⠁⡎⠖⢋⡔⢆⣏⢿⠳⣝⣳⣼⠇⡀⡐⠘⠙⢿⣿⠋⠊⢓⣈⡍⣺⣟⣳⠞⣵⢫⣾⣭⢜⠲⢤⡙⣦⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⢸⠈⠐⠜⢄⠾⡱⠎⢷⣻⣽⡿⣲⡀⠆⠀⠈⣀⣤⣥⣀⠁⠙⠒⠳⣗⢷⣿⣚⡿⢛⢛⠟⡢⠓⠂⢙⡝⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠀⠉⠉⣹⡏⢱⠏⣼⢛⢯⣶⣿⣿⣿⡖⠒⠋⠙⠛⠙⠉⠉⠒⢲⣿⣿⢿⣶⡿⡚⣇⠹⢎⠹⣏⠉⠉⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠀⠀⠀⡇⣎⠎⠐⡝⢷⣧⣻⠾⡻⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠝⣷⣞⣥⠿⢩⠂⠱⢵⢸⠀⠀⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠀⠀⠀⠘⢤⠨⣊⣌⠱⡜⢱⣮⣣⡝⣹⡱⢦⣤⣤⣤⣤⡴⢎⡿⢌⡷⣕⡄⢫⠆⣡⡕⢁⡦⠃⠀⠀⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠀⠀⠀⠀⠀⠉⠀⡗⠋⣘⠥⣬⣔⠫⡶⣻⡙⢯⣝⣫⡻⢋⣞⣵⠟⣱⣦⠌⣃⠚⢸⠀⠉⠀⠀⠀⠀⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	⠀⠀⠀⠀⠀⠀⠀⠀⠸⢶⠱⡿⠛⢯⢓⣴⢣⢽⠸⣛⣻⡇⡟⢢⣆⡢⡽⠙⢿⣹⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀$(DEF_COLOR)"
		@echo "$(MAGENTA)	    ⠀⠀⠀⠀⠀⠈⠉⠀⠀⠈⠳⠃⠣⠵⣁⣒⣸⣸⠬⠞⠘⠜⠁⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀$(DEF_COLOR)"

%.o:%.c
	@$(CC) $(FLAGS) -c $< -o $@

c: clean
clean:
	@/bin/rm -rf $(OBJ)
	@echo "$(YELLOW)OBJ Files Cleaned.$(DEF_COLOR)"

f: fclean
fclean: clean
	@/bin/rm -f $(NAME)
	@echo "$(YELLOW)All files cleaned.$(DEF_COLOR)"

re: fclean all

.PHONY: all clean fclean re f c