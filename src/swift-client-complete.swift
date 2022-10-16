import Foo
import FooConsumer

let consumer = Consumer()!
let myFoo = CFunctionReturningAFoo()!
CFunctionTakingAFoo(myFoo)

let myOtherFoo = consumer.methodReturningFoo()!
consumer.methodTakingAFoo(myOtherFoo)
consumer.methodTakingAFoo(myFoo)

myFoo.sayHello()
