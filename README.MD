
# ⛓️‍💥 Wand.Network

Subscribe to Network framework objects changes  
[📦 |Package](https://github.com/The-Wand/Network)  

### ⚙️ Usage

```swift
//Receive one NWPath object
| .one { (path: NWPath) in

}
```

```swift
//Subscribe to NWPath changes
| .every { (path: NWPath) in

}
```

```swift
//Subscribe to NWPath changes while condition
| .while { (path: NWPath) in
   true
}
```

### 📥 Installation

Use [Swift Package Manager](https://github.com/swiftlang/swift-package-manager) to [install](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) |Network

1. In Xcode, select 'File' → 'Add Packages...'
1. Enter https://github.com/The-Wand/Network

or you can add the following dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/The-Wand/Network.git", from: "1.0")
```

### 🪄 Сoncept

Wand started from the idea about receiving anything in most efficient way.   
Add one sign to anything and retreive the result 📦

You ideas, comments and contributions are welcome |

[Alex Kozin](mailto:al.kozin@gmail.com)  
