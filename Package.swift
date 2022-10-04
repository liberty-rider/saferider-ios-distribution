// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.6.4"
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
            targets: ["SafeRiderWrapper"]
        )
    ],
    targets: [
        .target(
            name: "SafeRiderWrapper",
            dependencies: [
                .target(name: moduleName),
                .target(name: "BigInt"),
                .target(name: "CombineExt"),
                .target(name: "CryptoSwift"),
                .target(name: "Gzip"),
                .target(name: "Surge"),
                .target(name: "SwiftyBeaver"),
                .target(name: "Swinject")
            ],
            path: "Sources"),
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/liberty-rider/saferider-ios-distribution/releases/download/\(version)/\(moduleName).zip",
            checksum: checksum
        ),
        .binaryTarget(
            name: "BigInt", 
            path: "Artifacts/BigInt.xcframework"
        ),
        .binaryTarget(
            name: "CombineExt", 
            path: "Artifacts/CombineExt.xcframework"
        ),
        .binaryTarget(
            name: "CryptoSwift", 
            path: "Artifacts/CryptoSwift.xcframework"
        ),
        .binaryTarget(
            name: "Gzip", 
            path: "Artifacts/Gzip.xcframework"
        ),
        .binaryTarget(
            name: "Surge", 
            path: "Artifacts/Surge.xcframework"
        ),
        .binaryTarget(
            name: "SwiftyBeaver", 
            path: "Artifacts/SwiftyBeaver.xcframework"
        ),
        .binaryTarget(
            name: "Swinject", 
            path: "Artifacts/Swinject.xcframework"
        )
    ]
)