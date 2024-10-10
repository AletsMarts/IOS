//
//  ViewController.m
//  appIOS1
//
//  Created by Guest User on 03/10/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //MOSTRAR U OCULTAR EL TECLADO
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}

-(void)dismissKeyboard{
    [_texto1 resignFirstResponder];
    
}

- (NSString *)invertirCadena:(NSString *)input {
    NSMutableString *result = [NSMutableString stringWithCapacity:[input length]];
    for (NSUInteger i = 0; i < [input length]; i++) {
        unichar c = [input characterAtIndex:i];
        if ([[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:c]) {
            [result appendFormat:@"%c", [[input lowercaseString] characterAtIndex:i]];
        } else if ([[NSCharacterSet lowercaseLetterCharacterSet] characterIsMember:c]) {
            [result appendFormat:@"%c", [[input uppercaseString] characterAtIndex:i]];
        } else {
            [result appendFormat:@"%c", c];
        }
    }
    return result;
}


- (IBAction)text1MostrarTeclado:(UITextField *)sender {
    [self becomeFirstResponder];
}

NSString *saludo = @"HOLA";

- (IBAction)botonSaludar:(UIButton *)sender {
    
    _label1.text = [saludo stringByAppendingString:_texto1.text];
    
    _label1.textColor = [UIColor blueColor];
    
    _label1.textColor = [UIColor colorWithRed:(177/255) green:(255/255) blue:(180.0/255) alpha:1.0];
}

- (IBAction)botonAMayusculas2:(UIButton *)sender {
/*
    NSString *inputString = @"tuTextoAquí"; // Deberías obtener esta cadena de algún lugar, por ejemplo, un UITextField
        NSUInteger length = [inputString length];
        unichar buffer[length];

        [inputString getCharacters:buffer range:NSMakeRange(0, length)];

        for (NSUInteger i = 0; i < length; i++) {
            // Verificar si el carácter está en el rango de letras minúsculas ASCII
            if (buffer[i] >= 'a' && buffer[i] <= 'z') {
                buffer[i] -= ('a' - 'A');  // Convertir a mayúscula restando la diferencia
            }
        }

        NSString *outputString = [NSString stringWithCharacters:buffer length:length];
        
        // Aquí deberías hacer algo con outputString, como asignarlo a un UILabel
        NSLog(@"%@", outputString);
 */
        NSString *originalText = _texto1.text;
        NSString *cadenaInvertida = [self invertirCadena:originalText];
        _texto1.text = cadenaInvertida;
    


 }




- (IBAction)botonAMayusculas:(UIButton *)sender {
    _texto1.text = [_texto1.text uppercaseString];
}


@end

