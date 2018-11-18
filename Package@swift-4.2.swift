// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "CCairo",
    products: [
        .library(name: "CCairo",
                 targets: ["CCairo"])
    ],
    targets: [
        .systemLibrary(
            name: "CCairo",
            pkgConfig: "cairo glib-2.0 gio-unix-2.0",
            providers: [
                .brew(["cairo", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libcairo2-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]
        )
    ],
    swiftLanguageVersions: [
        .v4_2,
        .version("5")
    ]
)
