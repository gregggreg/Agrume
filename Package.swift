// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Agrume",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Agrume", targets: ["Agrume"])
    ],
    targets: [
        .target(name: "Agrume", dependencies: [], path: "./Agrume")
    ]
)
