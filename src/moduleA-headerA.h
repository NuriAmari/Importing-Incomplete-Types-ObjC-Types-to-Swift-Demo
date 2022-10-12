#import <Foundation/Foundation.h>

@class Foo;

@interface Bar : NSObject
@end

@interface Baz : NSObject
@property (strong) Foo* propertyUsingAFoo;
- (id) init;
- (Foo *) methodReturningFoo;
- (int)methodTakingAFooAsAParameter:(Foo *)param1 andAnother:(Foo *)param2;
@end

Foo* CFunctionReturningAFoo();
void CFunctionTakingAFooAsAParameter(Foo* param1);

@interface Qux : NSObject
@property (strong) Bar* propertyUsingABar;
- (id) init;
- (Bar *)methodReturningBar;
- (int)methodTakingABarAsAParameter:(Bar *)param1
                                       andAnother:(Bar *)param2;
@end

Bar *CFunctionReturningABar();
void CFunctionTakingABarAsAParameter(Bar *param1);
