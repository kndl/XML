// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "XML",
    products: [
        .library(name: "XML", targets: ["XML"]),
    ],
    targets: [
      .target(name: "XML", dependencies: ["CLibXML2"]),
      .systemLibrary(
        name: "CLibXML2",
        pkgConfig: "libxml-2.0",
        providers: [
          .brew(["libxml2"]), 
          .apt(["libxml2-dev"]),
        ]
      ),
    ]
)
