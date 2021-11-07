#include <math.h>

int isArmstrongHelper(int num, int power){
    if(num == 0){
        return 0;
    }
    return ((int)(pow((num % 10), power))) + isArmstrongHelper((num / 10), power);
}

int isArmstrong(int num){
    int count = 0;
    for (int i = num; i > 0; i = i / 10)
    {
        count++;
    }
    int ans = isArmstrongHelper(num, count);
    return (num == ans ? 1 : 0);
}

int isPalindromeHelper(int num, int power){
    if(num == 0){
        return 0;
    }
    return (num % 10) * pow(10, power-1) + isPalindromeHelper((num / 10), power-1);
}

int isPalindrome(int num){
    int count = 0;
    for (int i = num; i > 0; i = i / 10)
    {
        count++;
    }
    int ans = isPalindromeHelper(num, count);
    return (num == ans ? 1 : 0);
}