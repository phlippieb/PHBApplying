# PHBApplying

[![Version](https://img.shields.io/cocoapods/v/PHBApplying.svg?style=flat)](https://cocoapods.org/pods/PHBApplying)
[![License](https://img.shields.io/cocoapods/l/PHBApplying.svg?style=flat)](https://cocoapods.org/pods/PHBApplying)
[![Platform](https://img.shields.io/cocoapods/p/PHBApplying.svg?style=flat)](https://cocoapods.org/pods/PHBApplying)

## What is this?

**Applying** is simply syntactic sugar. It is a method that applies a given closure to a receiving object; for example:

```
let nameLabel = UILabel.applying { $0.text = viewModel.name }
```

**Applying** facilitates remarkably clean initialisation code. Instead of

```
private lazy var button: UIButton = {
   let button = UIButton()
   button.addTarget(self, action: #selector(onTap), for: .touchUpInside)
   return button
}()
```

we can write

```
private lazy var button = UIButton()
   .applying { $0.addTarget(self, action: #selector(onTap), for: .touchUpInside) }
```

It is conceptually identical to [Then](https://github.com/devxoul/Then), with different terminology. I chose to use `applying` because:

- `then` is well-suited to describing asynchronous processes, and is commonly used in that context
- `apply` is used in Kotlin to mean exactly what it means in this library, making it the established terminology
- `applying` indicates that the method modifies and returns the receiver, in keeping with similar Swift terminology such as `sorted`. 

Please note that I happened to have come up with the same idea as Then, independently. My original use case prompted me to call it Configurable (see my Medium article [here](https://medium.com/better-programming/swift-hacks-de-duplicate-tedious-type-declarations-with-in-line-configuration-13f66370754)). I developed it for my working project, and found myself missing it whenever I was on a differnet project, so I decided to publish it as a pod.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

### Swift Package Manager

PHBApplying can be installed via SPM. Add it to your dependencies: 

```swift
// ...
dependencies: [
  .package(url: "https://github.com/phlippieb/PHBApplying.git", from: "0.2.1")
],
targets: [
  .target(name: "YourTarget", dependencies: ["PHBApplying"])
],
// ... 
```

### Cocoapods

PHBApplying is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PHBApplying', '~> 0.2.1'
```

## Author

phlippieb, phlippie.bosman@gmail.com

## License

PHBApplying is available under the MIT license. See the LICENSE file for more info.
