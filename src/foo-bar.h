#import <Foundation/Foundation.h>

@interface Foo : NSObject 
- (void) sayHello;
- (void) sayHelloFrom:(NSString*)source;
@end

@protocol Bar <NSObject> 
- (void) sayHello;
- (void) sayHelloFrom:(NSString*)source;
@end
