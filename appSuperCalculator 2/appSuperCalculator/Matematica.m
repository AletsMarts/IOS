//
//  Matematica.m
//  appSuperCalculator
//
//  Created by jimbo on 28/09/24.
//

#import "Matematica.h"


@implementation Matematica

-(NSString *) convertirARomano:(int)numero{
    NSArray *numerosRomanos = @[
        @{@"valor": @1000, @"romano":@"M"},
        @{@"valor": @900, @"romano":@"CM"},
        @{@"valor": @500, @"romano":@"D"},
        @{@"valor": @400, @"romano":@"CD"},
        @{@"valor": @100, @"romano":@"C"},
        @{@"valor": @90, @"romano":@"XC"},
        @{@"valor": @50, @"romano":@"L"},
        @{@"valor": @40, @"romano":@"XL"},
        @{@"valor": @10, @"romano":@"X"},
        @{@"valor": @9, @"romano":@"IX"},
        @{@"valor": @5, @"romano":@"V"},
        @{@"valor": @4, @"romano":@"IV"},
        @{@"valor": @1, @"romano":@"I"},
        
    ];
    
    NSMutableString *stringRomano = [NSMutableString string];
    
    //iterar sobre la tabla de equivalencias
    for(NSDictionary *entrada in numerosRomanos){
        int valor = [entrada[@"valor"] intValue];
        NSString *romano = entrada[@"romano"];
        
        //mientras el numero sea mayor o igual
        while (numero>=valor) {
            [stringRomano appendString:romano];
            numero -= valor;
            
        }
    }
    return stringRomano;
}
- (IBAction)botonRaiz:(id)sender {
    
    NSString *inputText = [self.textFieldRaiz stringValue];
    
    double numero = [inputText doubleValue];
    
    if([inputText length] == 0){
        [self.labelRaiz setStringValue:@"Por favor, ingrese un valor"];
        return;
    }
    
    double raizCubo = cbrt(numero);
    
    [self.labelRaiz setStringValue:[NSString stringWithFormat:@"Raiz cubica: %.0f",raizCubo]];}



- (IBAction)division:(id)sender {
    double numero1 = [self.textFieldNum1 doubleValue];
    double numero2 = [self.textFieldNum2 doubleValue];
    
    if(numero2 != 0){
        double resultado = numero1/numero2;
        [self.textFieldResultado setStringValue: [NSString stringWithFormat:@"%.3f",resultado]];
        
    } else {
        [self.textFieldResultado setStringValue:@"No es posible divividir por 0" ];
        
    }
}

- (IBAction)multiplicacion:(id)sender {
    double numero1 = [self.textFieldNum1 doubleValue];
    double numero2 = [self.textFieldNum2 doubleValue];
    double resultado = numero1*numero2;
    
    [self.textFieldResultado setStringValue: [NSString stringWithFormat:@"%.0f",resultado]];}

- (IBAction)menos:(id)sender {
    double numero1 = [self.textFieldNum1 doubleValue];
    double numero2 = [self.textFieldNum2 doubleValue];
    double resultado = numero1-numero2;
    
    [self.textFieldResultado setStringValue: [NSString stringWithFormat:@"%.0f",resultado]];}

- (IBAction)mas:(NSButton *)sender {
    double numero1 = [self.textFieldNum1 doubleValue];
    double numero2 = [self.textFieldNum2 doubleValue];
    double resultado = numero1+numero2;
    
    [self.textFieldResultado setStringValue: [NSString stringWithFormat:@"%.0f",resultado]];
}


- (IBAction)slider:(NSSlider *)sender {
    [_textFieldNum2 setIntValue:_slider.intValue];}


- (IBAction)stepper:(NSStepper *)sender {
    [self.textFieldNum1 setIntValue:sender.intValue];
    _textFieldNum1.intValue = (unsigned)_stepper.integerValue;
    
}
- (IBAction)botonRomano:(NSButton *)sender {
    int numero = [self.textFieldRomano intValue];
    
    NSString *numeroRomano = [self convertirARomano:numero];
    
    [self.labelRomano setStringValue:numeroRomano];
 
}
@end
