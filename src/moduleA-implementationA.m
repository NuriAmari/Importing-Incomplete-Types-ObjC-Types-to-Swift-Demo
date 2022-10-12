#import "moduleA-headerA.h"

@implementation Baz
- (id)init {
    if (self = [super init]) {
        return self;
    } else
        return nil;
}
- (Foo *) methodReturningFoo {
    return nil;
}
- (int)methodTakingAFooAsAParameter:(Foo *)param1 andAnother:(Foo *)param2 {
    return 5;
}
@end

Foo* CFunctionReturningAFoo() {
    return NULL;
}
void CFunctionTakingAFooAsAParameter(Foo* param1) {
    
}

@implementation Qux
- (id)init {
    if (self = [super init]) {
        return self;
    } else
        return nil;
}
- (Bar *)methodReturningBar {
    return nil;
}
- (int)methodTakingABarAsAParameter:(Bar *)param1
                                       andAnother:(Bar *)param2 {
    return 5;
}
@end

Bar *CFunctionReturningABar() {
    return NULL;
}

void CFunctionTakingABarAsAParameter(Bar *param1) {
    
}

