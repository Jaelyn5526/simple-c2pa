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
             checksum: "192aadb4c439365123cdd5b5aef2f5ca39f761eaf61cbab7eb983360432ccc06"
        ),
        .target(
            name: "SimpleC2PA",
	     dependencies: [ "SimpleC2PAFramework" ],
             path: "apple/src"
        ),
    ]
)
