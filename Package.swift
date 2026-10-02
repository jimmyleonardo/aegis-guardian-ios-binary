// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-3.3.0/AegisGuardian.xcframework.zip",
            checksum: "2a1c940581a2ab5ca22da746a95a0a68bb5eda355b4a840c0d34d474d5acd14b"
        )
    ]
)
