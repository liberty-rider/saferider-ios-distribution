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
        .binaryTarget(name: "CombineExt", url: "\(release)/CombineExt.xcframework.zip", checksum: "6e5689e7872b4c6d7d9b81e5f3b627ec6fcdd29e12a17336af4b1ae37c4004b4"),
        .binaryTarget(name: "CryptoSwift", url: "\(release)/CryptoSwift.xcframework.zip", checksum: "89207e7ad608ee54377afb142265c6d85d839c16d0c3fa0326b3af7d9f10ac9c"),
        .binaryTarget(name: "CryptoSwiftResources", url: "\(release)/CryptoSwiftResources.xcframework.zip", checksum: "70116ad82165726f2d6a300a0ae3ed1d5d9953f13eb3184524df59c2d4dc42b0"),
        .binaryTarget(name: "DataCompression", url: "\(release)/DataCompression.xcframework.zip", checksum: "2cecee17b136a4748c1854da41f65c750f15eb50d958ed5f918ef1fabb9fa5ab"),
        .binaryTarget(name: "DeviceKit", url: "\(release)/DeviceKit.xcframework.zip", checksum: "f9ac848e5354f6aba37cc5d1720f40fb984e02a5598dc9502179c8699425d15f"),
        .binaryTarget(name: "onnxruntime", url: "\(release)/onnxruntime.xcframework.zip", checksum: "391772c9c6be6d361e05c20eb7603958d872bee20be47789b0740741628e30bb"),
        .binaryTarget(name: "OnnxRuntimeBindings", url: "\(release)/OnnxRuntimeBindings.xcframework.zip", checksum: "e3dd3bde85a592ba4dffcb0cbb72d363c5cb9919b3f366573c523170f45629e9"),
        .binaryTarget(name: "SafeRider", url: "\(release)/SafeRider.xcframework.zip", checksum: "61911522e05a847a7f1e6190fd5378f2db7a882e1d313aeffe9ff5eb9426314b"),
        .binaryTarget(name: "Swinject", url: "\(release)/Swinject.xcframework.zip", checksum: "3fbb9625e4c231917dcec93383f11a9c0c114bb19b12353e8cf2085106d5ad5d")
    ]
)