#import "moduleB-headerA.h"

@implementation Foo : NSObject
- (id) sayHello {
    NSLog(@"Hello!");
}
@end

@implementation Corge
- (NSUInteger) doSomething {
    return 5;
}
@end
