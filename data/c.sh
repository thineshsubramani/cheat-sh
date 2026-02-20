### 1 Program Entry
- Main: `int main() { return 0; }`
- Print: `printf("Hello World\n");`
- Include: `#include <stdio.h>`

### 2 Variables & Types
- Int: `int x = 10;`
- Float: `float f = 3.14;`
- Double: `double d = 3.14159;`
- Char: `char c = 'A';`
- String: `char s[] = "Text";`
- Const: `const int MAX = 100;`

### 3 Input/Output
- Printf: `printf("x = %d", x);`
- Scanf: `scanf("%d", &x);`
- Format: `%d` (int), `%f` (float), `%s` (string), `%c` (char)
- Puts: `puts("String");`
- Gets: `fgets(buf, size, stdin);` (Safe alternative to gets)

### 4 Control Flow
- If: `if (x > 0) { ... }`
- Else If: `else if (x < 0) { ... }`
- Else: `else { ... }`
- Switch: `switch(x) { case 1: ... break; default: ... }`
- Ternary: `x = (condition) ? 1 : 0;`

### 5 Loops
- For: `for (int i = 0; i < 10; i++) { ... }`
- While: `while (x > 0) { ... }`
- Do-While: `do { ... } while (x > 0);`
- Break: `break;`
- Continue: `continue;`

### 6 Functions
- Define: `int add(int a, int b) { return a + b; }`
- Call: `int sum = add(5, 3);`
- Void: `void func() { ... }`
- Prototype: `int add(int, int);` (Before main)

### 7 Pointers
- Declare: `int *ptr;`
- Address: `ptr = &x;`
- Dereference: `int y = *ptr;`
- Null: `int *ptr = NULL;`
- Arithmetic: `ptr++;` (Move to next element)

### 8 Arrays
- Declare: `int arr[5];`
- Init: `int arr[] = {1, 2, 3};`
- Access: `arr[0] = 10;`
- 2D: `int matrix[3][3];`
- Size: `sizeof(arr) / sizeof(arr[0])`

### 9 Strings
- Declare: `char s[20] = "Hello";`
- Header: `#include <string.h>`
- Copy: `strcpy(dest, src);`
- Cat: `strcat(dest, src);`
- Len: `strlen(s);`
- Compare: `strcmp(s1, s2);`

### 10 Structs
- Define: `struct Point { int x; int y; };`
- Declare: `struct Point p1;`
- Init: `struct Point p1 = {10, 20};`
- Access: `p1.x = 5;`
- Pointer: `p1->x` (if p1 is a pointer)
- Typedef: `typedef struct { ... } Point;`

### 11 Memory Management
- Header: `#include <stdlib.h>`
- Malloc: `int *p = malloc(sizeof(int) * 10);`
- Calloc: `int *p = calloc(10, sizeof(int));` (Zero init)
- Realloc: `p = realloc(p, new_size);`
- Free: `free(p);`

### 12 Linked List
- Define: `struct Node { int data; struct Node* next; };`
- Head: `struct Node* head = NULL;`
- Traverse: `struct Node* temp = head; while(temp != NULL) { temp = temp->next; }`

### 13 Stack
- Array Init: `int s[10], top=-1;`
- Array Push: `void push(int x){ s[++top]=x; }`
- Array Pop: `int pop(){ return s[top--]; }`
- List Def: `struct Node { int data; struct Node* next; } *top=NULL;`
- List Push: `n->next=top; top=n;`
- List Pop: `t=top; top=top->next; free(t);`

### 14 Queue
- Array Init: `int q[10], f=0, r=-1;`
- Array Enq: `void enq(int x){ q[++r]=x; }`
- Array Deq: `int deq(){ return q[f++]; }`
- List Def: `struct Node *f=NULL, *r=NULL;`
- List Enq: `if(r) r->next=n; else f=n; r=n;`
- List Deq: `t=f; f=f->next; if(!f) r=NULL; free(t);`

### 15 File I/O
- File Ptr: `FILE *fp;`
- Open: `fp = fopen("file.txt", "r");`
- Modes: `"r"` (read), `"w"` (write), `"a"` (append)
- Write: `fprintf(fp, "Text");`
- Read: `fscanf(fp, "%s", buf);`
- Close: `fclose(fp);`

### 16 Preprocessor
- Define: `#define PI 3.14`
- Macro: `#define SQUARE(x) ((x)*(x))`
- Ifdef: `#ifdef DEBUG ... #endif`
- Include: `#include "myheader.h"`

### 17 Enums & Unions
- Enum: `enum Color { RED, GREEN, BLUE };`
- Union: `union Data { int i; float f; };` (Shared memory)
- Usage: `enum Color c = RED;`

### 18 Command Line Args
- Main: `int main(int argc, char *argv[])`
- Argc: Number of arguments
- Argv: Array of strings (argv[0] is program name)

### 19 Bitwise Operators
- AND: `a & b`
- OR: `a | b`
- XOR: `a ^ b`
- NOT: `~a`
- Shift: `a << 1`, `a >> 1`

### 20 Type Casting
- Implicit: `float f = 10;`
- Explicit: `int i = (int) 3.14;`
- Ptr Cast: `(void *) ptr`

### 21 Math Library
- Header: `#include <math.h>`
- Sqrt: `sqrt(x)`
- Pow: `pow(base, exp)`
- Abs: `abs(x)` (stdlib.h), `fabs(x)` (float)
- Ceil/Floor: `ceil(x)`, `floor(x)`

### 22 Storage Classes
- Auto: `auto int x;` (Default)
- Extern: `extern int x;` (Global in another file)
- Static: `static int count;` (Persists value)
- Register: `register int i;` (CPU register hint)

### 23 Error Handling
- Header: `#include <errno.h>`
- Errno: `extern int errno;`
- Perror: `perror("Error message");`
- Strerror: `strerror(errno);`

### 24 Time
- Header: `#include <time.h>`
- Type: `time_t t;`
- Current: `time(&t);`
- String: `ctime(&t);`

### 25 Random Numbers
- Header: `#include <stdlib.h>`
- Seed: `srand(time(NULL));`
- Rand: `int r = rand();`
- Range: `r = rand() % 10;` (0 to 9)

### 26 Function Pointers
- Declare: `int (*funcPtr)(int, int);`
- Assign: `funcPtr = &add;`
- Call: `int result = (*funcPtr)(10, 20);`
- Array: `void (*arr[])(int) = {func1, func2};`

### 27 Header Files
- Guard: `#ifndef HEADER_H #define HEADER_H ... #endif`
- Pragma: `#pragma once` (Non-standard but common)