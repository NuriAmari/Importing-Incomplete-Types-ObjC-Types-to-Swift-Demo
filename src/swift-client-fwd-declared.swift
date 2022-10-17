import FooBarConsumer

let consumer = Consumer()!
let myFoo = CFunctionReturningAFoo()!
let myBar = CFunctionReturningABar()!
CFunctionTakingAFoo(myFoo)
CFunctionTakingABar(myBar)

let myOtherFoo = consumer.methodReturningAFoo()!
let myOtherBar = consumer.methodReturningABar()!
consumer.methodTakingAFoo(myOtherFoo)
consumer.methodTakingAFoo(myFoo)
consumer.methodTakingABar(myOtherBar)
consumer.methodTakingABar(myBar)

// Would fail to typecheck: myFoo.sayHello()
