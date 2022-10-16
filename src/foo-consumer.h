#import <Foundation/Foundation.h>

@class Foo;

@interface Consumer : NSObject
@property (strong) Foo* propertyUsingAFoo;
- (Consumer *) init;
- (Foo *) methodReturningFoo;
- (void)methodTakingAFoo:(Foo *)foo;
@end

Foo* CFunctionReturningAFoo();
void CFunctionTakingAFoo(Foo* foo);
