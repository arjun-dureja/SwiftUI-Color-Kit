// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ColorKit",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ColorKit",
            targets: ["ColorKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/arjun-dureja/Sliders-SwiftUI.git" , from: "1.0.3"),
        .package(url: "https://github.com/arjun-dureja/SwiftUI-Shapes.git", from: "1.0.4"),
        .package(url: "https://github.com/kieranb662/CGExtender.git", from: "1.0.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ColorKit",
            dependencies: ["CGExtender","Shapes","Sliders"]),
        .testTarget(
            name: "ColorKitTests",
            dependencies: ["ColorKit"]),
    ]
)
