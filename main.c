1 #include <stdlib.h>
2
3 int main(int argc, char *argv[]){
4   int ipos, ival;
5   int *iarray = (int *) malloc(10*sizeof(int));
6   if (argc == 2) ival = atoi(argv[1]);
7   for (int i = 0; i<=10; i++){ iarray[i] = ipos; }
8   for (int i = 0; i<=10; i++){
9     if (ival == iarray[i]) ipos = i;
10  }
11 }
