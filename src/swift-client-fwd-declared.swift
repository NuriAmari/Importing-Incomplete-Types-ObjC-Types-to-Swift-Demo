import FooConsumer

let consumer = Consumer()!
let myFoo = CFunctionReturningAFoo()!
CFunctionTakingAFoo(myFoo)

let myOtherFoo = consumer.methodReturningFoo()!
consumer.methodTakingAFoo(myOtherFoo)
consumer.methodTakingAFoo(myFoo)

// Would fail to typecheck: myFoo.sayHello()

