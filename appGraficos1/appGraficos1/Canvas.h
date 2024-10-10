//
//  Canvas.h
//  appGraficos1
//
//  Created by Guest User on 27/09/24.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Canvas : NSView

-(NSPoint)randomPoint;

//-(void)dibujaLinea;
-(void)dibujaPoligono;

//-(void)dibujarGradienteRadial1;
//-(void)dibujarGradienteRadial2;
//-(void)dibujaEstrellaRect;
//-(void)dibujarCurvaBezier1;
-(void)dibujarCurvaBezier2;
-(void)dibujarCurvaBezier3;

@end

NS_ASSUME_NONNULL_END
