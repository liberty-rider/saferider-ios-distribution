// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.6.3"
let moduleName = "SafeRider"
let checksum = "d036ec324dbeff1e91a8115957310af69c5b9db3d9ec93fa191277d2bba652f3"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName, "SafeRiderDependencies"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMinor(from: "5.3.0"))
    ],
    targets: [
        .target(
            name: "SafeRiderDependencies",
            dependencies: [
                .product(name: "BigInt", package: "BigInt")
            ],
            path: "SafeRiderDependencies"),
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/liberty-rider/saferider-ios-distribution/releases/download/\(version)/\(moduleName).zip",
            checksum: checksum
        )
    ]
)