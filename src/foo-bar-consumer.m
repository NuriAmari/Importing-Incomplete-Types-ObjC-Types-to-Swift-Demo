#import "foo-bar.h"
#import "foo-bar-consumer.h"

@interface BarConformingType : NSObject <Bar>
- (void)sayHello;
- (void) sayHelloFrom:(NSString*)source;
@end
@implementation BarConformingType 
- (void)sayHello {
    NSLog(@"Hello from BarConformingType");
}
- (void) sayHelloFrom:(NSString*)source {
    NSLog(@"%@", [NSString stringWithFormat: @"Hello from %@", source]);
}
@end

@implementation Consumer
- (id)init {
    if (self = [super init]) {
        return self;
    } else
        return nil;
}
- (Foo *) methodReturningAFoo {
    return [[Foo alloc] init];
}
- (void)methodTakingAFoo:(Foo *)foo {
    [foo sayHelloFrom: @"methodTakingAFooAsAParameter"];
}
- (NSObject<Bar> *) methodReturningABar {
    return [[BarConformingType alloc] init];
}
- (void)methodTakingABar:(NSObject<Bar> *)bar {
    [bar sayHelloFrom: @"methodTakingABarAsAParameter"];
}
@end

Foo* CFunctionReturningAFoo() {
    return [[Foo alloc] init];
}
void CFunctionTakingAFoo(Foo* foo) {
    [foo sayHelloFrom: @"CFunctionTakingAFooAsAParameter"];
}

NSObject<Bar>* CFunctionReturningABar() {
    return [[BarConformingType alloc] init];
}
void CFunctionTakingABar(NSObject<Bar>* bar) {
    [bar sayHelloFrom: @"CFunctionTakingABarAsAParameter"];
}
