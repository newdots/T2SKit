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
      url: "https://github.com/AppleClash/T2SKit/releases/download/1.2.0/Tun2SocksFramework.xcframework.zip",
      checksum: "1b219dc072e23f0e8882f1e45adbeb7e197f1a9d47e6a479dd3219d5aec9ec42"
    )
  ]
)
