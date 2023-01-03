### Methods of Animation
1. modify a view with an `.animation()` modifier
2. modify a view’s state-binding[^1] with an `.animation()` modifier
3. modify a view with a specific effect and activate it by wrapping some state change within the `withAnimation { }` closure


### Animation Modifiers
- `.animation()`
- `.rotation3DEffect()`


### Preventing Future `.animation()` modifiers from affecting prior views
```swift
View()
    .modifier1()
    .modifier2()
    .animation(nil, value: state1)
    .modifier3()
    .modifier4()
    .animation(.default, value: state1)
```

[^1]: E.g. `$someProperty1`