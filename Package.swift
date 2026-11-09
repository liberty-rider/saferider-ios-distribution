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

let release = "https://github.com/liberty-rider/saferider-ios-distribution/releases/download/1.5.3"

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
        .binaryTarget(name: "CombineExt", url: "\(release)/CombineExt.xcframework.zip", checksum: "98a862b029c0f060cba69d9d92af537ed2e7db9fbb30e7ea40c35ddf37f116a6"),
        .binaryTarget(name: "CryptoSwift", url: "\(release)/CryptoSwift.xcframework.zip", checksum: "344d2288310caa6f80141f79fec888a585acc26d4ad823bb87348b4447be7f85"),
        .binaryTarget(name: "CryptoSwiftResources", url: "\(release)/CryptoSwiftResources.xcframework.zip", checksum: "50778eba9d67c87b46d7eb6fde08d09ba258a1d535c05fdafcd5bd0e2b93f049"),
        .binaryTarget(name: "DataCompression", url: "\(release)/DataCompression.xcframework.zip", checksum: "5edb94b5fcdf07ff260b5e88ffeaddb7bf955855bcecb4e67974fbe7388197aa"),
        .binaryTarget(name: "DeviceKit", url: "\(release)/DeviceKit.xcframework.zip", checksum: "13e5f9de3dcb5d7ca8c19f969ec78903590b3a524f1950990db3a1d15b28fc65"),
        .binaryTarget(name: "onnxruntime", url: "\(release)/onnxruntime.xcframework.zip", checksum: "ed8de99707c18f56820c20bfa5e36ca523114640c42c45abe89b5c1e059cbc22"),
        .binaryTarget(name: "OnnxRuntimeBindings", url: "\(release)/OnnxRuntimeBindings.xcframework.zip", checksum: "d6925a9a76fb083597e80820aa264072762848e0b767faa94b6d499b120e7133"),
        .binaryTarget(name: "SafeRider", url: "\(release)/SafeRider.xcframework.zip", checksum: "5868a4f082ee5ac872f823b0425ac3ae36d750223f09848fe95cd0980423f32f"),
        .binaryTarget(name: "Swinject", url: "\(release)/Swinject.xcframework.zip", checksum: "85a5169bdbd4f8cf3bf611f0e6222f1a43d18c3830ae7d55b81220164af81f40")
    ]
)