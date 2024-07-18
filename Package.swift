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
             checksum: "f8c9c441e3a328714267a0518afaae4c3e86b30deac2621a07e78336aaa2232b"
        ),
        .target(
            name: "SimpleC2PA",
	     dependencies: [ "SimpleC2PAFramework" ],
             path: "apple/src"
        ),
    ]
)
