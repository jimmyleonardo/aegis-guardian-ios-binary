// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-2.1.1/AegisGuardian.xcframework.zip",
            checksum: "3e7ed0fc4d3cf0c5a5e3a7ee0e285f95655ffe005c859cde898d757f634e4576"
        )
    ]
)
