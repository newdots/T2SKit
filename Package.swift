// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "T2SKit",
    products: [
        .library(name: "T2SKit", targets: ["T2SKit", "Tun2SocksFramework"])
    ],
    targets: [
        .target(name: "T2SKit"),
        .binaryTarget(name: "Tun2SocksFramework", url: "", checksum: "")
    ]
)
