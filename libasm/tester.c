#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
// #include <stdlib.h>

extern int ft_strlen(char *str);
extern ssize_t ft_write(int fd, const void *buf, size_t count);
extern char *ft_strcpy(char *dest, char *src);
extern int ft_strcmp(const char *s1, const char *s2);
extern int ft_read(int fd, void *buf, size_t count);
extern char *ft_strdup(const char * s);

// // Test pour strlen
// int main() {
// 	char str[] = "Hello World!";
// 	int lenght = strlen(str);
// 	printf("Fonction string.h : %d\n",lenght);
// 	int ft_lenght = ft_strlen(str);
// 	printf("Fonction ASM : %d\n", ft_lenght);
// }

// // Test pour write
// int main() {
// 	char str[] = "Hello World!";
// 	write(1, str, 5);
// 	ft_write(1, str, 5);
// }

// // Test pour strcpy
// int main() {
// 	char str[] = "123456789";
// 	char dest[10];
// 	ft_strcpy(dest, str);
// 	printf("Dest = %s\n", dest);
// 	char str1[] = "123456789";
// 	char dest1[10];
// 	strcpy(dest1, str1);
// 	printf("Dest1 = %s\n", dest1);
// }

// // Test pour strcpy
// int main() {
// 	char str[] = "123456789";
// 	char dest[10];
// 	ft_strcpy(dest, str);
// 	printf("Dest = %s\n", dest);
// 	char str1[] = "123456789";
// 	char dest1[10];
// 	strcpy(dest1, str1);
// 	printf("Dest1 = %s\n", dest1);
// }

// // Test pour strcmp
// int main() {
// 	char str[] = "123456789";
// 	char str1[] = "123456789";
// 	int i = strcmp(str, str1);
// 	int i1 = ft_strcmp(str, str1);
// 	printf("i = %d, i1 = %d\n", i, i1);
// 	char stra[] = "123456788";
// 	char stra1[] = "123456789";
// 	int j = strcmp(stra, stra1);
// 	int j1 = ft_strcmp(stra, stra1);
// 	printf("j = %d, j1 = %d\n", j, j1);
// 	char strb[] = "123456789";
// 	char strb1[] = "123456788";
// 	int k = strcmp(strb, strb1);
// 	int k1 = ft_strcmp(strb, strb1);
// 	printf("k = %d, k1 = %d\n", k, k1);
// }

// // Test pour read
// int main() {
// 	char dest[100];
// 	int fd = open("test.txt", O_RDONLY);
// 	int nbit = ft_read(fd, dest, 3);
// 	printf("%s, et %d\n", dest, nbit);
// }

// Test pour strdup
int main() {
	char str[] = "Hello World!";
	char *cpy_str = ft_strdup(str);
	printf("%s\n", cpy_str);
}