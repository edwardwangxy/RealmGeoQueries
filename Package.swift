// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GeoQueries",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "GeoQueries",
            targets: ["GeoQueries"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-cocoa", from: "5.1.0"),
    ],
    targets: [
        .target(
            name: "GeoQueries",
            dependencies: ["Realm"],
            path: ".",
            sources: ["GeoQueries.swift"]
        )
    ]
)
