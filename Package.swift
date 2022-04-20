// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "T2SKit",
  products: [
    .library(name: "T2SKit", targets: ["T2SKit", "T2SKitC"])
  ],
  targets: [
    .target(name: "T2SKit", dependencies: ["T2SKitC"]),
    .target(name: "T2SKitC", dependencies: ["Tun2SocksFramework"], publicHeadersPath: "."),
    .binaryTarget(
      name: "Tun2SocksFramework",
      url: "https://github.com/AppleClash/T2SKit/releases/download/1.0.0/Tun2SocksFramework.xcframework.zip",
      checksum: "e970564e4beaa844116ca595cad599006ed5f88a1125299ca959ee9826b1920a"
    )
  ]
)
