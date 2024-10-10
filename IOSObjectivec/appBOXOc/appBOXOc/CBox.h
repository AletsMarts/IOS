//
//  CBox.h
//  appBOXOc
//
//  Created by Guest User on 06/09/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CBox : NSObject
//class = interface
@interface Box : NSObject {
    double length;    // Length of a box
    double breadth;   // Breadth of a box
    double height;    // Height of a box
}

-(id) initWithInt:(int)n1 y:(int)n2;


@property(nonatomic, readwrite) double height;  // Property

-(double) volume; //cuando está en minúsculas es un método de instancia

@synthesize height;

-(id)init { //init = constructor
   self = [super init];
   length = 1.0;
   breadth = 1.0;
   return self; //self = this
}


-(id) initWithInt:(int)n1 y:(int)n2 {
    self = [super init];
    length = n1;
    breadth = n2;
    return self;
}

-(double) volume { //volume = método de instancia
   return length*breadth*height;
}
@end

NS_ASSUME_NONNULL_END
