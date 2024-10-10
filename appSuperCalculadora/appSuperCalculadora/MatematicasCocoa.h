//
//  MatematicasCocoa.h
//  appSuperCalculadora
//
//  Created by Guest on 25/09/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "CMatematicas.h"

NS_ASSUME_NONNULL_BEGIN

@interface MatematicasCocoa : NSObject

@property (weak) IBOutlet NSTextField *texto1;
@property (weak) IBOutlet NSTextField *texto2;
@property (weak) IBOutlet NSTextField *labelResultado;
@property (weak) IBOutlet NSStepper *stepper1;
@property (weak) IBOutlet NSSlider *slider1;

- (IBAction)stepper1:(NSStepper *)sender;

- (IBAction)slider1:(NSSlider *)sender;
- (IBAction)botonSumar:(NSButton *)sender;

-(void) awakeFromNib;

- (IBAction)botonSalir_:(NSButton *)sender;


@end

NS_ASSUME_NONNULL_END
