// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let VERSION_ANALYTICS_KIT: PackageDescription.Version = "4.0.1"
let VERSION_CRASH_REPORTER: PackageDescription.Version = "4.0.0"

let package = Package(
    name: "PayUIndia-CommonUI",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PayUIndia-CommonUI",
            targets: ["PayUIndia-CommonUITarget"])
    ],
    dependencies: [
        .package(name: "PayUIndia-CrashReporter", url: "https://github.com/payu-intrepos/PayUCrashReporter-iOS.git", from: VERSION_CRASH_REPORTER),
        .package(name: "PayUIndia-Analytics", url: "https://github.com/payu-intrepos/PayUAnalytics-iOS.git", from: VERSION_ANALYTICS_KIT)
        ],
    targets: [
        .binaryTarget(name: "PayUCommonUI", path: "./PayUCommonUI.xcframework"),
        .target(
            name: "PayUIndia-CommonUITarget",
            dependencies: [
                .product(name: "PayUIndia-Analytics", package: "PayUIndia-Analytics"),
                "PayUIndia-CrashReporter",
                "PayUCommonUI"
            ],
            path: "Wrappers/PayUIndia-CommonUIWrapper"
        ),
    ]
)
