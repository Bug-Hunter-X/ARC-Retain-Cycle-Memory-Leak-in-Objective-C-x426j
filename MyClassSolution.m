To fix the retain cycle, modify the 'MyClass' declaration to use a `weak` reference to 'AnotherClass'.

```objectivec
@interface MyClass : NSObject

@property (nonatomic, weak) AnotherClass *anotherObject;

@end

@implementation MyClass
// ... implementation ...
@end
```

By declaring `anotherObject` as `weak`, 'MyClass' no longer holds a strong reference to 'AnotherClass'.  When 'MyClass' is deallocated, the reference to 'AnotherClass' is automatically nullified, breaking the cycle and allowing for proper memory deallocation.