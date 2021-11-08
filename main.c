#include <stdio.h>
#include "NumClass.h"
int main(){
    int first, last;
    scanf("%d %d", &first, &last);
    printf("The Armstrong numbers are:");
    for (int i = first; i <= last; i++)
    {
        if(isArmstrong(i))
        {
            printf(" %d", i);
        }
    }
    printf("\n");
    printf("The Palindromes are:");
    for (int i = first; i <= last; i++)
    {
        if(isPalindrome(i))
        {
            printf(" %d", i);

        }
    }
    printf("\n");
    printf("The Prime numbers are:");
    for (int i = first; i <= last; i++)
    {
        if(isPrime(i))
        {
            printf(" %d", i);
        }
    }
    printf("\n");
    printf("The Strong numbers are:");
    for (int i = first; i <= last; i++)
    {
        if(isStrong(i))
        {
            printf(" %d", i);

        }
    }
    
}