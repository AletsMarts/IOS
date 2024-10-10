//
//  Matematica.h
//  appSuperCalculator
//
//  Created by jimbo on 28/09/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
NS_ASSUME_NONNULL_BEGIN

@interface Matematica : NSObject


//TextField principales
@property (weak) IBOutlet NSTextField *textFieldNum1;
@property (weak) IBOutlet NSTextField *textFieldNum2;
@property (weak) IBOutlet NSTextField *textFieldResultado;

//modificadores
@property (weak) IBOutlet NSStepper *stepper;
@property (weak) IBOutlet NSSlider *slider;

- (IBAction)stepper:(id)sender;
- (IBAction)slider:(id)sender;

//botones de operacion

- (IBAction)mas:(NSButton *)sender;
- (IBAction)menos:(NSBundle *)sender;
- (IBAction)multiplicacion:(NSButton *)sender;
- (IBAction)division:(NSButton *)sender;




//Calculo Raiz Cubica
@property (weak) IBOutlet NSTextField *textFieldRaiz;
@property (weak) IBOutlet NSTextField *labelRaiz;
- (IBAction)botonRaiz:(id)sender;

//conversor a numeros romanos

@property (weak) IBOutlet NSTextField *textFieldRomano;

@property (weak) IBOutlet NSTextField *labelRomano;

- (IBAction)botonRomano:(id)sender;


@end

NS_ASSUME_NONNULL_END
