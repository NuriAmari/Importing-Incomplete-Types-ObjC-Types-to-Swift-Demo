#import "foo-bar.h"

@implementation Foo
- (void) sayHello {
    NSLog(@"Hello!");
}

- (void) sayHelloFrom:(NSString*)source {
    NSLog(@"%@", [NSString stringWithFormat: @"Hello from %@", source]);
}
@end
