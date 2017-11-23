#include <stdio.h>
#include <stdlib.h>

const char* fstring =
    "Given a = %d, b = %d, c = %d, at %d, function should be %d, and comes back %d.\n";
int polynomial(int,int,int,int);

int main()
{
    int vals[][4] = { {1,1,0,1}, {2,2,0,1}, {1, 1, 5, 1}, {2, 2, 0, 2},
        {2, 2, -10, 2}};
    int index, a, b, c, x;
    for(index = 0; index < 5; index++){
        a = vals[index][0];
        b = vals[index][1];
        c = vals[index][2];
        x = vals[index][3];
        printf(fstring, a,b,c,x, a*x*x + b*x + c, polynomial(a,b,c,x));
    }
    puts("Test Complete\n\n");
}