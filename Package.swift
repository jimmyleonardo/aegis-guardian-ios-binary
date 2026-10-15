// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-3.5.0/AegisGuardian.xcframework.zip",
            checksum: "c826780eacf311a59d3dc45068a7db3e9194302db638d26e49fb09766a4c25e6"
        )
    ]
)
