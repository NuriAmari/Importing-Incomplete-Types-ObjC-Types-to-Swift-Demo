#import "foo.h"
#import "foo-consumer.h"

@implementation Consumer
- (id)init {
    if (self = [super init]) {
        return self;
    } else
        return nil;
}
- (Foo *) methodReturningFoo {
    return [[Foo alloc] init];
}
- (void)methodTakingAFoo:(Foo *)foo {
    [foo sayHelloFrom: @"methodTakingAFooAsAParameter"];
}
@end

Foo* CFunctionReturningAFoo() {
    return [[Foo alloc] init];
}
void CFunctionTakingAFoo(Foo* foo) {
    [foo sayHelloFrom: @"CFunctionTakingAFooAsAParameter"];
}
