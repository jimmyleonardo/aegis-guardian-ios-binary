// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-3.1.2/AegisGuardian.xcframework.zip",
            checksum: "7013c867878b186605fb56bb44ef1c88e83d417a082675165a66a308d2a09155"
        )
    ]
)
