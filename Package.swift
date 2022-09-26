// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.6.0"
let moduleName = "SafeRider"
let checksum = "0bbeea1d53ce00769ea444987daea1c042681418bae4ac5e11ee90dc0397e5e2"

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
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/liberty-rider/saferider-ios-distribution/releases/download/\(version)/\(moduleName).zip",
            checksum: checksum
        )
    ]
)
