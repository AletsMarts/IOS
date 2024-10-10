//
//  Canvas.m
//  appGraficos1
//
//  Created by Guest User on 27/09/24.
//

#import "Canvas.h"

@implementation Canvas

-(NSPoint)randomPoint{
    NSPoint resultado;
    NSRect r = [self bounds];
    //cambiar por arc4random
    resultado.x = r.origin.x + random()%(int)r.size.width;
    resultado.y = r.origin.y + random()%(int)r.size.height;
    
    return resultado;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
/*    // Drawing code here.
    NSRect rectangulo = [self bounds];
    //[[NSColor grayColor]set];
    
    [NSColor colorWithDeviceRed:0.2f green:0.2f blue:0.722 alpha:0.100];
    [NSBezierPath fillRect:rectangulo];
    
    [[NSColor greenColor]set];
    srandom((unsigned)time(NULL));
    NSBezierPath *path = [[NSBezierPath alloc]init];
    [path setLineWidth:3.0];
    NSPoint p = [self randomPoint];
    [path moveToPoint:p];
    for (int i=0; i<15; i++) {
        p = [self randomPoint];
        [path lineToPoint:p];
    }
    
    [path stroke];
    [path fill];
*/
    
    //[self dibujaLinea];
   //[self dibujaEstrellaRect];
    //[self dibujaPoligono];
    //[self dibujarGradienteRadial1];
   // [self dibujarGradienteRadial2];
    //[self dibujarCurvaBezier1];
    [self dibujarCurvaBezier2];
    [self dibujarCurvaBezier3];
}

/*
-(void) dibujaLinea{
    [[NSColor blueColor]set];
    [NSBezierPath setDefaultLineCapStyle:NSLineCapStyleButt];
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    
    [path setLineWidth:5.0];
    [path moveToPoint:NSMakePoint(50.0, 50.0)];
    [path lineToPoint:NSMakePoint(200.0, 200.0)];
    [path setLineCapStyle:NSLineCapStyleButt];
    
    [path stroke];
}
*/
-(void) dibujaPoligono{
    NSBezierPath *path = [[NSBezierPath alloc]init];
    [path setLineWidth:3];
   /*
    NSPoint punto;
    punto.x = 5;
    punto.y = 5;
    [path moveToPoint:punto];
    punto.x = 100;
    punto.y = 5;
    [path lineToPoint:punto];
    punto.x = 5;
    punto.y = 100;
    [path lineToPoint:punto];
    punto.x = 5;
    punto.y = 5;
    [path lineToPoint:punto];
    [path stroke];
    [path fill];
    */
    int fig[4][3] = {{5,5},
                    {100,5},
                    {5,100},
                    {5,5}};
    
    NSPoint punto;
    punto.x = fig[0][0];
    punto.y = fig[0][1];
    [path moveToPoint:punto];
    for (int i=1; i<4; i++) {
        punto.x= fig[i][0];
        punto.y = fig[i][1];
        [path lineToPoint:punto];
    }
    [path stroke];
    [path fill];
}
/*
- (void)dibujaEstrellaRect:(NSRect)rect {
    [[NSColor yellowColor] setFill]; // Color de relleno
    [[NSColor blackColor] setStroke]; // Color del borde

    NSBezierPath *path = [NSBezierPath bezierPath];
    
    CGFloat centerX = NSMidX(rect); // Centro en el ancho del rectángulo
    CGFloat centerY = NSMidY(rect); // Centro en el alto del rectángulo
    CGFloat radius = MIN(rect.size.width, rect.size.height) / 4; // Radio externo
    CGFloat innerRadius = radius / 2; // Radio interno

    // Definimos los puntos de la estrella
    for (int i = 0; i < 10; i++) {
        CGFloat angle = (i * M_PI) / 5; // 5 picos
        CGFloat r = (i % 2 == 0) ? radius : innerRadius; // Alterna entre radio interno y externo
        CGFloat x = centerX + r * cos(angle);
        CGFloat y = centerY - r * sin(angle);
        
        if (i == 0) {
            [path moveToPoint:NSMakePoint(x, y)]; // Mover al primer punto
        } else {
            [path lineToPoint:NSMakePoint(x, y)]; // Dibujar línea a los puntos
        }
    }

    [path closePath]; // Cierra el path
    [path setLineWidth:5.0]; // Ancho del borde
    [path setLineCapStyle:NSLineCapStyleButt]; // Estilo del borde
    
    [path fill]; // Rellena la estrella
    [path stroke]; // Dibuja el borde
}
 */
/*
 -(void)dibujarGradienteRadial1{
    NSRect bounds = [self bounds];
    NSGradient *gradiente = [[NSGradient alloc]initWithStartingColor:[NSColor yellowColor] endingColor:[NSColor redColor]];
    
    NSPoint centerPoint = NSMakePoint(NSMidX(bounds), NSMidY(bounds));
    
    NSPoint otherPoint = NSMakePoint(centerPoint.x + 35.0, centerPoint.y + 35.0);
    
    CGFloat firstRadius = MIN((bounds.size.width/2.0),(bounds.size.height/2.0)-2.0);
    
    [gradiente drawFromCenter:centerPoint radius:firstRadius toCenter:otherPoint radius:20 options:0];
    
    [self dibujaPoligono];
}
*/
/*
- (void)dibujaEstrellaRect:(NSRect)rect {
    [[NSColor redColor] setFill]; // Color de relleno
    [[NSColor yellowColor] setStroke]; // Color del borde

    NSBezierPath *path = [NSBezierPath bezierPath];
    
    CGFloat centerX = NSMidX(rect); // Centro en el ancho del rectángulo
    CGFloat centerY = NSMidY(rect); // Centro en el alto del rectángulo
    CGFloat radius = MIN(rect.size.width, rect.size.height) / 4; // Radio externo
    CGFloat innerRadius = radius / 2; // Radio interno

    // Definimos los puntos de la estrella
    for (int i = 0; i < 10; i++) {
        CGFloat angle = (i * M_PI) / 5; // 5 picos
        CGFloat r = (i % 2 == 0) ? radius : innerRadius; // Alterna entre radio interno y externo
        CGFloat x = centerX + r * cos(angle);
        CGFloat y = centerY - r * sin(angle);
        
        if (i == 0) {
            [path moveToPoint:NSMakePoint(x, y)]; // Mover al primer punto
        } else {
            [path lineToPoint:NSMakePoint(x, y)]; // Dibujar línea a los puntos
        }
    }

    [path closePath]; // Cierra el path
    [path setLineWidth:5.0]; // Ancho del borde
    [path setLineCapStyle:NSLineCapStyleButt]; // Estilo del borde
    
    [path fill]; // Rellena la estrella
    [path stroke]; // Dibuja el borde
}
*/
/*
-(void)dibujarGradienteRadial2{
    NSRect borde = [self bounds];
    NSGradient *gradiente = [[NSGradient alloc]initWithStartingColor:[NSColor blueColor] endingColor:[NSColor redColor]];
    
    NSPoint puntoCentro = NSMakePoint(NSMidX(borde), NSMidY(borde));
    
    NSPoint punto2 = NSMakePoint(puntoCentro.x + 60, puntoCentro.y + 60);
    CGFloat radio = MIN((borde.size.width/10.0)-2.0, ((borde.size.height/2.0)-2.0));
    
    [gradiente drawFromCenter:puntoCentro radius:radio toCenter:punto2 radius:20 options:0];
    
    
}
*/
/*
-(void)dibujarCurvaBezier1{
    [[NSColor blackColor]set];
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path setLineWidth:5.0];
    [path moveToPoint:NSMakePoint(0.0, 0.0)];
    [path lineToPoint:NSMakePoint(100.0, 100.0)];
    [path curveToPoint:NSMakePoint(180.0, 210.0)
         controlPoint1:NSMakePoint(60.0, 20.0)
         controlPoint2:NSMakePoint(280.0, 100.0)];
    
    
    [path appendBezierPathWithRect:NSMakeRect(20.0, 150, 80.0, 50.0)];
    [path setLineCapStyle:NSLineCapStyleRound];
    
    [path stroke];
    
}
*/
-(void)dibujarCurvaBezier2{
    [[NSColor blackColor]set];
    NSPoint p1 = NSMakePoint(100, 100);
    NSPoint p2 = NSMakePoint(200, 300);
    NSPoint p3 = NSMakePoint(300, 100);
    
    //PUNTOS DE CONTROL
    NSPoint c1 = NSMakePoint(200, 200);
    NSPoint c2 = NSMakePoint(200, 0);
    
    NSBezierPath *curvaBezier = [NSBezierPath bezierPath];
    [curvaBezier moveToPoint:p1];
    [curvaBezier lineToPoint:p2];
    [curvaBezier lineToPoint:p3];
    [curvaBezier curveToPoint:p1 controlPoint1:c1 controlPoint2:c2];
    [curvaBezier closePath];
    [curvaBezier stroke];
}

-(void)dibujarCurvaBezier3{
    [[NSColor redColor] set];
    NSPoint p1 = NSMakePoint(200, 300);
    NSPoint p2 = NSMakePoint(300, 100);
    NSPoint p3 = NSMakePoint(400, 300);
    
    //PUNTOS DE CONTROL
    NSPoint c1 = NSMakePoint(200, 200);
    NSPoint c2 = NSMakePoint(400, 200);
    
    NSBezierPath *curvaBezier = [NSBezierPath bezierPath];
    [curvaBezier moveToPoint:p1];
    [curvaBezier lineToPoint:p2];
    [curvaBezier lineToPoint:p3];
    [curvaBezier curveToPoint:p1 controlPoint1:c1 controlPoint2:c2];
    [curvaBezier closePath];
    [curvaBezier stroke];
    [curvaBezier fill];
}

@end
