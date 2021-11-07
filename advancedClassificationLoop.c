#include <math.h>

int isArmstrong(int num){
    int sum = 0;
    int count = 0;
    for (int i = num; i > 0; i = i / 10)
    {
        count++;
    }
    
    for (int i = num; i > 0; i = i / 10)
    {
        sum += (int)(pow((i % 10), count));
    }
    return (sum == num ? 1 : 0);
}

int isPalindrome(int num){
    int sum = 0;
    for (int i = num; i > 0; i = i / 10)
    {
        sum *= 10;
        sum += (i % 10);
    }
    return (sum == num ? 1 : 0);
}