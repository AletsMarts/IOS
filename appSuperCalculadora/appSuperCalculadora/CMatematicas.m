//
//  Matematicas.m
//  appMatematicas
//
//  Created by Martin Valdes on 21/02/20.
//  Copyright © 2020 Martin Valdes. All rights reserved.
//

#import "CMatematicas.h"

@implementation CMatematicas

- (NSNumber *)multiplica:(NSNumber *)a withB:(NSNumber *)b {
      float number1 = [a floatValue];
      float number2 = [b floatValue];
      float product = number1 * number2;
      NSNumber *result = [NSNumber numberWithFloat:product];
      return result;
}
- (void ) multiplica:(NSNumber*)a withB:(NSNumber*)b resultado:(NSNumber *)resul
{
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    resul = [NSNumber numberWithFloat:product];
}

- (void ) multiplica_:(NSNumber *)a withB:(NSNumber *)b resultado:(double *)resul
{
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    
    *resul = product;    
}

-(NSNumber *)sumar:(NSNumber *)a withB:(NSNumber *)b
{
   int number1 = [a intValue];
   int number2 = [b intValue];
   int product = number1 + number2;
    NSNumber *result = [NSNumber numberWithInt:product];
   return result;
}

- (NSNumber *)restar:(NSNumber *)a withB:(NSNumber *)b
{
   int number1 = [a intValue];
   int number2 = [b intValue];
   int resul = number1 - number2;
   NSNumber *result = [NSNumber numberWithInt:resul];
   return result;
}

- (NSNumber *)dividir:(NSNumber *)a withB:(NSNumber *)b
{
   float number1 = [a floatValue];
   float number2 = [b floatValue];
   //int resul = number1 / number2;
  // NSNumber *result = [NSNumber numberWithInt:resul];
    NSNumber *result = [NSNumber numberWithFloat:number1/number2];
   return result;
}
- (NSNumber *)modulo:(NSNumber *)a withB:(NSNumber *)b
{
   int number1 = [a intValue];
   int number2 = [b intValue];
   int resul = number1 % number2;
   NSNumber *result = [NSNumber numberWithInt:resul];
   return result;
}

- (double) Factorial:(double) n
{
    double f=1;
    if( n == 0 || n == 1)
        return 1;
    for(int i = 1; i <= n; i++)
        f *= i;
    return f;
}
-(double) factorialR:(double )n
{
   if( n == 0 || n == 1)
       return 1;
    else
        return n * [self factorialR:n-1];
}


-(BOOL) es_Primo:(int) n
{
    int div = 2;
    while (div < n)
    {
       if (n % div == 0)
         return NO;
       div++;
    }
    return YES;
}
@end






// NSNumber *result = [NSNumber numberWithFloat:product];
  // NSNumber *pi = @3.1415;
