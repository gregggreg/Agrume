// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Agrume",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "Agrume", targets: ["Agrume"])
    ],
    targets: [
        .target(name: "Agrume", dependencies: ["SwiftyGif"], path: "./Agrume")
    ]
)
