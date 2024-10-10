//
//  main.m
//  NSMutableString
//
//  Created by Guest User on 09/10/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        NSMutableString *cadena1;
        NSMutableString *cadena2;
        
        cadena1 = [NSMutableString stringWithString:@"Tec. Laguna"];
        
        cadena2 = cadena1;
        
        [cadena2 appendString:@". Torreón, Coah."];
        NSLog(@"Contenido Cadena 1: %@", cadena1);
        NSLog(@"Contenido Cadena 2: %@", cadena2);
        
//        Tec. Laguna. Torréon, Coah. MEXICO
        //[cadena1 appendString:(nonnull NSString *);
        
        [cadena2 insertString:@"MEXICO" atIndex:[cadena2 length]];
         
         NSRange match;
         NSMutableString *cadena3;
         cadena3 = [NSMutableString stringWithString:[cadena2 lowercaseString]];
         match = [cadena3 rangeOfString:@"coah."];
         if(match.location == NSNotFound){
            NSLog(@"NO SE ENCONTRÓ LA CADENA");
        }else{
            NSLog(@"La cadena se encontró %lu",match.location);
            NSLog(@"Longitud de la subcadena = %lu",match.length);
        }
        
        NSMutableString *cadena4 = [NSMutableString stringWithString:@"INSTITUTO TECNOLOGICO DE LA LAGUNA"];
        [cadena4 replaceCharactersInRange:NSMakeRange(10, 11) withString:@"tecnologico"];
        NSLog(@"Contenido Cadena 4: %@", cadena4);
        
        [cadena4 replaceCharactersInRange:[cadena4 rangeOfString:@"tecnologico"] withString:@"TECNOLOGICO"];
        NSLog(@"Contenido Cadena 4: %@",cadena4);
        
        //SUBCADENAS
        NSString *cadAux;
        cadAux = [cadena4 substringWithRange:NSMakeRange(10, 11)];
        NSLog(@"Contenido cadAux: %@",cadAux);
        
        cadAux = [cadena4 substringToIndex:21];
        NSLog(@"Contenido cadAux: %@",cadAux);
        
        cadAux = [cadena4 substringFromIndex:21];
        NSLog(@"Contenido cadAux: %@",cadAux);
        
        //ELIMINAR
        NSMutableString *cadena5 =[[NSMutableString alloc]initWithFormat:@"%@%@",@"Torreón",@", Coahuila" ];
        
        NSLog(@"Contenido cadena 5: %@",cadena5);
        
        
        [cadena5 deleteCharactersInRange:[cadena5 rangeOfString:@"Torreón"]];
        
        NSLog(@"Contenido cadena 5: %@",cadena5);
        
        //INVERTIR LA cadena 5: , Coahuila => aliuhaoC,

        NSMutableString *cadenaInvertida = [NSMutableString stringWithCapacity:[cadena5 length]];

        [cadena5 enumerateSubstringsInRange:NSMakeRange(0,[cadena5 length])
                                     options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                                  usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                    [cadenaInvertida appendString:substring];
                                }];
        NSLog(@"Cadena invertida: %@",cadenaInvertida);

        // reversedString is now zyxwvutsrqponmlkjihgfedcba
        
    }
    return 0;
}
