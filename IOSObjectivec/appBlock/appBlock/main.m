//
//  main.m
//  appBlock
//
//  Created by Guest User on 09/09/24.
//

#import <Foundation/Foundation.h>

// Declaración del bloque para encontrar el mayor y menor en un vector
void (^mayorMenorEnVec)(int *, int*, int*) =
^(int *v, int *menor, int *mayor) {
    *menor = v[0];
    *mayor = v[0];
    
    for (int i = 1; i < 6; i++) {
        if (*menor > v[i]) {
            *menor = v[i];
        }
        if (*mayor < v[i]) {
            *mayor = v[i];
        }
    }
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int vec[6] = {90, 30, 50, 30, 40, 2};
        int mayor, menor;
        
        
        
        mayorMenorEnVec(vec, &mayor, &menor);
        
        
        NSLog(@"Mayor: %d", mayor);
        NSLog(@"Menor: %d", menor);
    }
    return 0;
}
