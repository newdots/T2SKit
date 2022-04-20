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
    .binaryTarget(
      name: "Tun2SocksFramework",
      url: "https://github.com/AppleClash/T2SKit/releases/download/1.1.0/Tun2SocksFramework.xcframework.zip",
      checksum: "cbf1c52cccabacc1a16dda0fd426fc8017111c8c5e2d5622ecc9e2da5a4150cf"
    )
  ]
)
