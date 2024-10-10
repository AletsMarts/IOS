//
//  MatematicasCocoa.m
//  appSuperCalculadora
//
//  Created by Guest on 25/09/24.
//

#import "MatematicasCocoa.h"

@implementation MatematicasCocoa

- (IBAction)botonSalir_:(NSButton *)sender {
  
    NSBeep();
    NSAlert *alert = [[NSAlert alloc]init];
    [alert setMessageText:@"ADIOS   🙈"];
    [alert setInformativeText:@" b y e 🐢"];
    [alert addButtonWithTitle:@"Cancelar "];
    [alert addButtonWithTitle:@"Ok "];
    
    if( [alert runModal] == NSAlertSecondButtonReturn)
        [NSApp terminate:self];
}

- (void)awakeFromNib {
    _texto1.intValue = _stepper1.intValue;
    _slider1.intValue = 25;
    _texto2.intValue = _slider1.intValue;
}


- (IBAction)botonSumar:(NSButton *)sender {
    
    NSNumber *n1 = [NSNumber numberWithInt:_texto1.intValue];
    NSNumber *n2 = [NSNumber numberWithInt:_texto2.intValue];
    CMatematicas *resul = [[CMatematicas alloc]init];
    NSNumber *resultado = [resul sumar:n1 withB:n2];
    _labelResultado.intValue = resultado.intValue;
}
- (IBAction)slider1:(NSSlider *)sender {
    [_texto2 setIntValue:[_slider1 intValue]];
}
- (IBAction)stepper1:(NSStepper *)sender {
    _texto1.intValue = (unsigned)_stepper1.integerValue;
}

@end
