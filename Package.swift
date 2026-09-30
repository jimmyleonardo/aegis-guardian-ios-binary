// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-3.2.0/AegisGuardian.xcframework.zip",
            checksum: "6e96cc061e0bbcfa6700b73aca5f5b246bba99b8d91f9c31ff55d8c30e70c511"
        )
    ]
)
