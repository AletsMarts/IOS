//
//  Matematicas.h
//  appMatematicas
//
//  Created by Martin Valdes on 21/02/20.
//  Copyright © 2020 Martin Valdes. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMatematicas : NSObject
- (NSNumber *)multiplica:(NSNumber *)a withB:(NSNumber *)b;
//SOBRECARGA DE METODOS

//INCLUIR UN METODO multiplyA que reciba tres argumentos,
//EN UNO DE ELLOS REGRESAR EL RESULTADO, el metodo es void

- (void ) multiplica:(NSNumber*)a withB:(NSNumber*)b resultado:(NSNumber *)resul;


- (void ) multiplica_:(NSNumber*)a withB:(NSNumber*)b resultado:(double *)resul;



//  TAREA
//  AGREGUE LOS METODOS PARA SUMAR, RESTAR, DIVIDIR

-(NSNumber *)sumar:(NSNumber *)a withB:(NSNumber *)b;


- (NSNumber *)restar:(NSNumber *)a withB:(NSNumber *)b;


- (NSNumber *)dividir:(NSNumber *)a withB:(NSNumber *)b;

- (NSNumber *) modulo:(NSNumber *)a withB:(NSNumber *)b;

-(BOOL) es_Primo:(int) n;

- (double) Factorial:(double) n;
-(double) factorialR:(double )n;

@end

NS_ASSUME_NONNULL_END



/*
 Multiples of 3 and 5
 Problem 1
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 Find the sum of all the multiples of 3 or 5 below 1000.
 */



//COMO USAR cin y cout en una app. OBJECTIVE-C
// COMO INTRODUCIR DATOS DESDE LA CONSOLA

// ENVIAR ARGUMENTOS A main -argv -


