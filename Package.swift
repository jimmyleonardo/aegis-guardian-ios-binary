// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-3.1.0/AegisGuardian.xcframework.zip",
            checksum: "6aeecfd20ef57d909b05777ca896baf3497f9b19c0c6e08239aebe69325b6a60"
        )
    ]
)
