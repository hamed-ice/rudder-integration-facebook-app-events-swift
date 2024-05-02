
// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RudderFacebookAppEvents",
    platforms: [.iOS(.v12)],
    products: [
      .library(
          name: "RudderFacebookAppEvents",
          targets: ["RudderFacebookAppEvents"]
      )],
    dependencies: [
      .package(name: "Rudder", url: "https://github.com/rudderlabs/rudder-sdk-ios.git", .exact("2.4.2")),
      .package(name: "Facebook", url: "https://github.com/facebook/facebook-ios-sdk.git", from: "17.0.0"),
        // add any other dependencies you need here
    ],
    targets: [
        .target(
            name: "RudderFacebookAppEvents",
            dependencies: [
                "Rudder",
                .product(name: "FacebookCore", package: "Facebook")
            ]
        )
    ]
)
