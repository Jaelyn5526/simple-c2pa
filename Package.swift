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
             url: "https://gitlab.com/api/v4/projects/51891540/packages/generic/simple_c2pa/0.0.14/SimpleC2PA.xcframework.zip",
             checksum: "3efad13087fb3c2ce48d2ad6d977409a0c9c6fc730e1d485645517fa995d6352"
        ),
        .target(
            name: "SimpleC2PA",
	     dependencies: [ "SimpleC2PAFramework" ],
             path: "apple/src"
        ),
    ]
)
