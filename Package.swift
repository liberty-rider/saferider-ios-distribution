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

let release = "https://github.com/liberty-rider/saferider-ios-distribution/releases/download/1.5.1"

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
        .binaryTarget(name: "CombineExt", url: "\(release)/CombineExt.xcframework.zip", checksum: "6a0c9e8148945fbce0ce38c7e1dda79b9d53a44e18837832cae1b1267e02f7c6"),
        .binaryTarget(name: "CryptoSwift", url: "\(release)/CryptoSwift.xcframework.zip", checksum: "8c15d653b698ddf929d1eb91f1be541d1e535b57fea8386671f884efe45cdc90"),
        .binaryTarget(name: "CryptoSwiftResources", url: "\(release)/CryptoSwiftResources.xcframework.zip", checksum: "a6c7f25bc998737f5a9b116c391d6abadf403bddad6eef1f217d20fe8b8214a5"),
        .binaryTarget(name: "DataCompression", url: "\(release)/DataCompression.xcframework.zip", checksum: "0c2019886784928ae85119b9113c474fe8e0cd11e2a86127226fd6626a2cb5fb"),
        .binaryTarget(name: "DeviceKit", url: "\(release)/DeviceKit.xcframework.zip", checksum: "678f71d4b586ff68813792574a1f95d410eb4275afc4fdf2efd22eb839e90c0d"),
        .binaryTarget(name: "onnxruntime", url: "\(release)/onnxruntime.xcframework.zip", checksum: "f1ee3cb31b19310f99b8cc099894c71386eb44bca0733ea81532e758e10dc0a0"),
        .binaryTarget(name: "OnnxRuntimeBindings", url: "\(release)/OnnxRuntimeBindings.xcframework.zip", checksum: "b17365a8ece1bdcc2185c766047f6758d331884a448a47c0956ab359569e90a4"),
        .binaryTarget(name: "SafeRider", url: "\(release)/SafeRider.xcframework.zip", checksum: "e93cb9de6cad1ca4a682e016343dbd682ae13da4384474149c5fc845e03f934b"),
        .binaryTarget(name: "Swinject", url: "\(release)/Swinject.xcframework.zip", checksum: "6d7824030d09f5e541a11c7b13b952d54a8c4350458bde30471f339cba00f48b")
    ]
)