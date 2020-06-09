# ProgressHUD
A Progress HUD for SwiftUI

<img align="center" src="https://raw.githubusercontent.com/dougdiego/ProgressHUD/master/Assets/screenshot01.png" width="320" />

</br></br>

# Usage
1. Add a binding bool to control progress HUD presentation state
3. Add `.progressHUD` modifier to your View
```swift
@State var showProgress: Bool = false

struct ContentView: View {
    var body: some View {
        VStack {
            // your view
        }
        .progressHUD(isShowing: $showProgress, text: Text("Loading..."))
    }
}
```

### Required parameters 
`isShowing` - binding to determine if the Progress HUD should be seen on screen or hidden     

### optional parameters    
`type` -  success, error, info, or default   
`text` - text to show below the indicator
`blurBackground` - blur the background behind the Progress HUD

## Examples

To try ProgressHUD examples:
- Clone the repo `https://github.com/dougdiego/ProgressHUD.git`
- Open and run: `<ProgressHUD>/Example/Example.xcodeproj`

## Installation

### [Swift Package Manager](https://swift.org/package-manager/)

```swift
dependencies: [
    .package(url: "https://github.com/dougdiego/ProgressHUD.git", from: "0.0.1")
]
```

### Manually

Drop [ProgressHUD.swift](https://github.com/dougdiego/ProgressHUD/blob/master/ProgressHUD.swift) in your project.

## Requirements

* iOS 13+
* Xcode 11+ 
