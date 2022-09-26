// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.6.0"
let moduleName = "SafeRider"
let checksum = "f56e7b87a385864cba1ac2a5928a29a270b09bb085e2765f5eb264b15810abfb"

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
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", .upToNextMinor(from: "1.9.0")),
        .package(url: "https://github.com/Swinject/Swinject.git", .upToNextMinor(from: "2.8.0")),
        .package(url: "https://github.com/Jounce/Surge", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/CombineCommunity/CombineExt.git", .upToNextMinor(from: "1.8.0")),
        .package(url: "https://github.com/1024jp/GzipSwift.git", .upToNextMinor(from: "5.2.0"))
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/liberty-rider/saferider-ios-distribution/releases/download/\(version)/\(moduleName).zip",
            checksum: checksum
        )
    ]
)
