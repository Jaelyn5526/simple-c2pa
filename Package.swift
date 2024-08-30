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
             checksum: "cb471984a070492234bae7476a5687e9ea81a2204399dd4eaf17abfc247f9c9c"
        ),
        .target(
            name: "SimpleC2PA",
	     dependencies: [ "SimpleC2PAFramework" ],
             path: "apple/src"
        ),
    ]
)
