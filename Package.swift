// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-3.1.1/AegisGuardian.xcframework.zip",
            checksum: "af8d9d23478cc812e6c1ab5484a4f9e2d10b7705a32d751ba43ddcfdaee057cf"
        )
    ]
)
