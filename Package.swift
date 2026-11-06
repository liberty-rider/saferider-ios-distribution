// swift-tools-version: 6.2
//
//  SafeRider iOS SDK
//  Copyright © 2026 Liberty Rider. All rights reserved.
//
//  Commercial license.
//
//  Liberty Rider (contact@liberty-rider.com)
//  https://liberty-rider.com/
//

import PackageDescription

let release = "https://github.com/liberty-rider/saferider-ios-distribution/releases/download/1.5.2"

let package = Package(
    name: "SafeRider",
    platforms: [.iOS("16.5")],
    products: [
        .library(
            name: "SafeRider",
            targets: [
                "CombineExt",
                "CryptoSwift",
                "CryptoSwiftResources",
                "DataCompression",
                "DeviceKit",
                "onnxruntime",
                "OnnxRuntimeBindings",
                "SafeRider",
                "Swinject"
            ]
        )
    ],
    targets: [
        .binaryTarget(name: "CombineExt", url: "\(release)/CombineExt.xcframework.zip", checksum: "c7ee929ceb28e96e38c05dea37a340bc0311a6328c2d27813737abe146831ce3"),
        .binaryTarget(name: "CryptoSwift", url: "\(release)/CryptoSwift.xcframework.zip", checksum: "977b84f5c07cccee08206ce3ba925e9d76ca57d8d56dfde2aba22a19bddea4f0"),
        .binaryTarget(name: "CryptoSwiftResources", url: "\(release)/CryptoSwiftResources.xcframework.zip", checksum: "ace2c5f9a53d540326b7853742da385807ed6f20ec81e55da50e06ff4bdfdb0c"),
        .binaryTarget(name: "DataCompression", url: "\(release)/DataCompression.xcframework.zip", checksum: "65ca2d2dd478082ec3361656867b4574f42d2f8ed64f4806f5c358a788d45f6d"),
        .binaryTarget(name: "DeviceKit", url: "\(release)/DeviceKit.xcframework.zip", checksum: "f7e5c6b05c12b2e7b07ee076464e479879f7527462ed4e9ca2636291bae673a9"),
        .binaryTarget(name: "onnxruntime", url: "\(release)/onnxruntime.xcframework.zip", checksum: "31ca9d94820f4e52fc5ffef5724ca6e4f6aa5110c609218de6fdc49a6036db4f"),
        .binaryTarget(name: "OnnxRuntimeBindings", url: "\(release)/OnnxRuntimeBindings.xcframework.zip", checksum: "9ba0334fe9e72ce783b53bfe65fe3c2398438413b16c95a0463d02dc963681fd"),
        .binaryTarget(name: "SafeRider", url: "\(release)/SafeRider.xcframework.zip", checksum: "3e32f6ca5c687c5bdc0eae1e9012aa26ffb4aa5317f97bd99d65d8a0ba58dcc3"),
        .binaryTarget(name: "Swinject", url: "\(release)/Swinject.xcframework.zip", checksum: "03ac6c8b74dbd3a5ad83c63a8a783f608211d8d51b8438bdb5319f56c08d197d")
    ]
)