#include <stdio.h>

extern int ft_strlen(char *str);

int main() {
	char str[] = "123456789";
	int lenght = ft_strlen(str);

	printf("%d\n", lenght);
}