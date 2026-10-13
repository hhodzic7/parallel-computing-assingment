# parallel-computing-assingment
parallel-computing- Valgrind Assingment

## Valgrind results (original code) 

```
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./program 5
==6196== Memcheck, a memory error detector
==6196== Copyright (C) 2002-2024, and GNU GPL'd, by Julian Seward et al.
==6196== Using Valgrind-3.24.0 and LibVEX; rerun with -h for copyright info
==6196== Command: ./program 5
==6196== 
==6196== Invalid write of size 4
==6196==    at 0x1091A2: main (main.c:7)
==6196==  Address 0x4a6e068 is 0 bytes after a block of size 40 alloc'd
==6196==    at 0x4844818: malloc (vg_replace_malloc.c:446)
==6196==    by 0x109161: main (main.c:5)
==6196== 
==6196== Conditional jump or move depends on uninitialised value(s)
==6196==    at 0x1091D0: main (main.c:9)
==6196==  Uninitialised value was created by a stack allocation
==6196==    at 0x109149: main (main.c:3)
==6196== 
==6196== Invalid read of size 4
==6196==    at 0x1091CB: main (main.c:9)
==6196==  Address 0x4a6e068 is 0 bytes after a block of size 40 alloc'd
==6196==    at 0x4844818: malloc (vg_replace_malloc.c:446)
==6196==    by 0x109161: main (main.c:5)
==6196== 
==6196== 
==6196== HEAP SUMMARY:
==6196==     in use at exit: 40 bytes in 1 blocks
==6196==   total heap usage: 1 allocs, 0 frees, 40 bytes allocated
==6196== 
==6196== 40 bytes in 1 blocks are definitely lost in loss record 1 of 1
==6196==    at 0x4844818: malloc (vg_replace_malloc.c:446)
==6196==    by 0x109161: main (main.c:5)
==6196== 
==6196== LEAK SUMMARY:
==6196==    definitely lost: 40 bytes in 1 blocks
==6196==    indirectly lost: 0 bytes in 0 blocks
==6196==      possibly lost: 0 bytes in 0 blocks
==6196==    still reachable: 0 bytes in 0 blocks
==6196==         suppressed: 0 bytes in 0 blocks
==6196== 
==6196== For lists of detected and suppressed errors, rerun with: -s
==6196== ERROR SUMMARY: 13 errors from 4 contexts (suppressed: 0 from 0)
```
