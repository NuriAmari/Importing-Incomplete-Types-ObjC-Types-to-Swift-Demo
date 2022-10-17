#import <Foundation/Foundation.h>

@class Foo;
@protocol Bar;

@interface Consumer : NSObject
@property (strong )id<Bar> propertyUsingBar;
@property (strong) Foo* propertyUsingAFoo;
- (Consumer *) init;
- (Foo *) methodReturningAFoo;
- (NSObject<Bar> *) methodReturningABar;
- (void)methodTakingAFoo:(Foo *)foo;
- (void)methodTakingABar:(NSObject<Bar> *)bar;
@end

Foo* CFunctionReturningAFoo();
void CFunctionTakingAFoo(Foo* foo);
NSObject<Bar>* CFunctionReturningABar();
void CFunctionTakingABar(NSObject<Bar>* bar);
