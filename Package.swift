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
             checksum: "1f81d1ab50371f1c254951b31c13203a8db5f8580979b628224a564027a3fc9b"
        ),
        .target(
            name: "SimpleC2PA",
             path: "apple/src",
            dependencies: [ "SimpleC2PAFramework" ]             
        ),
    ]
)
