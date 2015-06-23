# objective-c 101

learning object-c with [Ry's tutorial](http://rypress.com/tutorials/objective-c/index)

## random notes taken

- `cmd + shift + o` is my life-saver. it opens files quickly.
- start with creating a command-line app. output of the app is at the console.
- first we have `main.m` which is the entry of everything.
- in `main.m` we have `(int) main()` function, which is the main function. :}
- the tutorial doesn't say the why about `@autoreleasepool`. i just keep everything inside this block.
- funcition "declaration" describes the function's api. it is placed at the top of the file (before `main()`).
- function "implementation" is the actual function body.
- with function declaration & implementation, we can define the implementation even after `(int) main`. it will not get an error.
- sounds to me like hoisting in javascript ...

### methods

- `static` variables retain their values in each states.
- every variables are pointers.
- calling a method `[object methodName]`. method calls also can be nested `[[Car alloc] init]`
- calling a method with argument `[car setModel:@"GT-R"]`
- calling a method with multiple arguments `[car setModel:@"GT-R" driveTo:@"cnx"]`
- access a property `car.model`

- `-` is for "instance methods" -> called by an instance of a class.
- `+` is for "class methods" -> called on the class itself.
- `[obj isKindOfClass:[ClassName class]]` check if `obj` is an instance of `ClassName` OR its subclasses.
- `[obj isMemberOfClass:[ClassName class]]` check and object against a class, but not its subclasses.
- to get class name: `[Class class]` or `NSClassFromString(@"Class")`

### properties

- `retain cycle`: memory management won't be able to destroy objects even they are no longer needed.
- it happens when 2 objects have "strong" reference to each other
- we can fix by using a "weak" reference on one object.
- parent-child data: parent should maintain a strong reference with its children
- but children should store a weak reference back to the parent
- **2 objects should NEVER have strong references to each other**

### protocols

- to me, protocols are like interfaces. they contain only method definition but not implementation.
- protocols are in `.h` files. they are used in another header files. `#import` is also required.

### categories and extensions

- such confusing concepts ... i'm dead now.
- categories are used for separate methods of a class into multiple implementations.
- categories should never re-define methods that exist already in another implementation file.
- categories and extensions both have something to do with private methods. i just don't know what they are about.

### blocks

- blocks == annonymous function in objective-c
- closure: can access a snapshot version of non-local variable
- so changing non-local variable's value after the closure is created doesn't change the value
- unless we tell it to do so, by putting `__block` modifier in variable declaration
- doing so makes the variable holds the reference to non-local variable. just like the static local variable.
- just like in javascript, a block can be passed as a method parameter.

### exceptions

- exceptions should be used only when necessary, not on every flow control.
- exceptions anatomy: type (name), reason, and userInfo

### errors

- errors represent **expected** problems.
- `NSError` = domain, code, userInfo
- cutom error class can be handy in large application.
- best practice: **define all errors in a dedicated header file**