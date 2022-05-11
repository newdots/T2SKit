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
      url: "https://github.com/AppleClash/T2SKit/releases/download/1.3.0/Tun2SocksFramework.xcframework.zip",
      checksum: "7f30708b3c194884f6383983dd5d8ae0d67b5adc77c6ce75cb0efb1ad43d6296"
    )
  ]
)
