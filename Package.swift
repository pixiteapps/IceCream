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
            url: "https://github.com/pixiteapps/realm-swift.git",
            exact: "10.54.5-pixite-spm"
        )
    ],
    targets: [
        .target(
            name: "IceCream",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-swift")
            ],
            path: "IceCream",
            sources: ["Classes"])
    ],
    swiftLanguageVersions: [.v5]
)
