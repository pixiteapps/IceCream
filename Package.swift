// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "IceCream",
    platforms: [
        .macOS(.v10_12), .iOS(.v14), .tvOS(.v10), .watchOS(.v3)
    ],
    products: [
        .library(
            name: "IceCream",
            targets: ["IceCream"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/realm/realm-swift",
            from: "10.40.0"
        )
    ],
    targets: [
        .target(
            name: "IceCream",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-swift"),
                .product(name: "Realm", package: "realm-swift")
                
            ],
            path: "IceCream",
            sources: ["Classes"])
    ],
    swiftLanguageVersions: [.v5]
)
