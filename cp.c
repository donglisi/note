#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

#define PERMS 0644

int main(int argc, char *argv[])
{
	int f1, f2, n;
	char buf[BUFSIZ];

	if (argc != 3)
		printf("Usage: cp from to\n");
	if ((f1 = open(argv[1], O_RDONLY, 0)) == -1)
		printf("cp: can't open %s\n", argv[1]);
	if ((f2 = open(argv[2], O_CREAT|O_WRONLY|O_SYNC, PERMS)) == -1)
		printf("cp: can't create %s, mode %03o\n", argv[2], PERMS);

	while ((n = read(f1, buf, BUFSIZ)) > 0)
		if (write(f2, buf, n) != n)
			printf("cp: error write 2 %d\n", n);
	return 0;
}
