// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "T2SKit",
  products: [
    .library(name: "T2SKit", targets: ["T2SKit"])
  ],
  targets: [
    .target(name: "T2SKit", dependencies: ["T2SKitC", "Tun2SocksFramework"]),
    .target(name: "T2SKitC", publicHeadersPath: "."),
  ]
)
