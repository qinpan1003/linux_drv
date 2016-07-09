#include <execinfo.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <stddef.h>

void fun5(void)
{
	*((int *)0) = 0x12345;
}

void fun4(void)
{
	fun5();
}

void fun3(void)
{
	fun4();
}

void fun2(void)
{
	fun3();
}


void fun1(void)
{
	fun2();
}


/* Obtain a backtrace and print it to @code{stdout}. */
void print_trace (void)
{
 void *array[30];
 size_t size;
 char **strings;
 size_t i;

size = backtrace (array, 30);
 strings = backtrace_symbols (array, size);
 if (NULL == strings)
 {
	perror("backtrace_synbols");
  exit(EXIT_FAILURE);
 }

 printf ("Obtained %zd stack frames.\n", size);

 for (i = 0; i < size; i++)
  printf ("%s\n", strings[i]);

 free (strings);
	strings = NULL;
}

void exit_handl(void)
{
	print_trace();
	exit(0);
}

int main(void)
{
	fprintf(stdout,"Hello World!\n");
	if (signal(SIGSEGV, (__sighandler_t)exit_handl) == SIG_ERR){
		perror("can't catch SIGSEGV");
	}
	fun1();
	return 0;
}
