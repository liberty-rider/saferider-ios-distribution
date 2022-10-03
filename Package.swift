// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.6.1"
let moduleName = "SafeRider"
let checksum = "07c67af5662f25af5386956bc06b72f53d9c3460fa8d8096f5b02a0d8747e310"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", .upToNextMinor(from: "1.9.0")),
        .package(url: "https://github.com/Swinject/Swinject.git", .upToNextMinor(from: "2.8.0")),
        .package(url: "https://github.com/Jounce/Surge.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/CombineCommunity/CombineExt.git", .upToNextMinor(from: "1.8.0")),
        .package(url: "https://github.com/1024jp/GzipSwift.git", .upToNextMinor(from: "5.2.0")),
        .package(url: "https://github.com/birdrides/mockingbird.git", .upToNextMinor(from: "0.20.0")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMinor(from: "1.6.0")),
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMinor(from: "5.3.0"))
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/liberty-rider/saferider-ios-distribution/releases/download/\(version)/\(moduleName).zip",
            checksum: checksum
        )
    ]
)
