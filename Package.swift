// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-3.4.0/AegisGuardian.xcframework.zip",
            checksum: "4e2bd7540cc3a1bb291b2615da0fbe518344478bf0f0fa4ce0199a26e2d0b3c7"
        )
    ]
)
