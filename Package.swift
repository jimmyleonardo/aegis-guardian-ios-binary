// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-2.1.2/AegisGuardian.xcframework.zip",
            checksum: "fb8c52c9727e43d60969bbed9ea4643e03eba25b834c5ce8b08f7205ced107e1"
        )
    ]
)
