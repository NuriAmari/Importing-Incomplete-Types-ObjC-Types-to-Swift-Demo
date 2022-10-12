@import A;
@import B;

int main() {
    @autoreleasepool {
       Baz* baz = [[Baz alloc] init];
       Qux* qux = [[Qux alloc] init];
       (void)CFunctionReturningAFoo();
    }
}
