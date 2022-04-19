// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "T2SKit",
  products: [
    .library(name: "T2SKit", targets: ["T2SKit", "Tun2SocksFramework"])
  ],
  targets: [
    .target(name: "T2SKit"),
    .binaryTarget(
      name: "Tun2SocksFramework",
      url: "https://github.com/AppleClash/T2SKit/releases/download/1.0.0/ClashKit.xcframework.zip",
      checksum: "2a9f2b4a9532a57ae9f09fdece098106427e940ab003f45085f1b023236f49af"
    )
  ]
)
