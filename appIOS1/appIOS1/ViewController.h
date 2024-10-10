//
//  ViewController.h
//  appIOS1
//
//  Created by Guest User on 03/10/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *texto1;
@property (weak, nonatomic) IBOutlet UILabel *label1;

- (IBAction)botonSaludar:(UIButton *)sender;

- (IBAction)text1MostrarTeclado:(UITextField *)sender;

- (IBAction)botonAMayusculas:(UIButton *)sender;

- (IBAction)botonAMayusculas2:(UIButton *)sender;

@end

