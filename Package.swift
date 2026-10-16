// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-3.6.0/AegisGuardian.xcframework.zip",
            checksum: "6114121f8c856720776bfdedcd3018c8a6c9041c6617c6bd16b155e00f80524a"
        )
    ]
)
