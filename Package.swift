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
             checksum: "1ebedacabf71919ca8e12b6da0694555b5f86547cc657f2448c733ab28ac6bdf"
        ),
        .target(
            name: "SimpleC2PA",
             path: "apple/src",
            dependencies: [ "SimpleC2PAFramework" ]             
        ),
    ]
)
