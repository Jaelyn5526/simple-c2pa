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
             checksum: "42cab7f05d193ae0e85acbe831eaaa86d808d97df2473ab0d1ecf092c5975ea3"
        ),
        .target(
            name: "SimpleC2PA",
	     dependencies: [ "SimpleC2PAFramework" ],
             path: "apple/src"
        ),
    ]
)
