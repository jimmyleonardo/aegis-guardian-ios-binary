// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AegisGuardian",
    platforms: [.iOS(.v15)],
    products: [.library(name: "AegisGuardian", targets: ["AegisGuardian"])],
    targets: [
        .binaryTarget(
            name: "AegisGuardian",
            url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary/releases/download/ios-3.1.3/AegisGuardian.xcframework.zip",
            checksum: "b5b1e67f43fa56909cadb827f48e800bf49f5b51af33a926ed3482ce4a8ac3c3"
        )
    ]
)
