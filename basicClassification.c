#include <math.h>


int isPrime(int num){
    int square = sqrt(num);
    for (int i = 2; i <= square; i++)
    {
        if(num % i == 0)
        {
            return 0;
        }
    }
    return 1;
}
int factorial(int num){
    int ans = 1;
    for (int i = 2; i <= num; i++)
    {
        ans *= i;
    }
    return ans;
}
int isStrong(int num){
    int sum = 0;
    for (int i = num; i > 0; i = i/10)
    {
        sum += factorial(i % 10);
    }
    return (sum == num ? 1 : 0);
}