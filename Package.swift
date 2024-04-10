// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SimpleC2PA",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "SimpleC2PA",
            targets: ["SimpleC2PA"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "SimpleC2PAFramework",
             url: "https://gitlab.com/api/v4/projects/51891540/packages/generic/simple_c2pa//SimpleC2PA.xcframework.zip",
             checksum: "908013b03f0a60f706091ed958f3548f9bba24cb8ceedfba243d7269065827f5"
        ),
        .target(
            name: "SimpleC2PA",
             path: "apple/src",
            dependencies: [ "SimpleC2PAFramework" ]             
        ),
    ]
)
