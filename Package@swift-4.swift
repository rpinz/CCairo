// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "CCairo",
    pkgConfig: "cairo glib-2.0 gio-unix-2.0",
    providers: [
        .brew(["cairo", "glib", "glib-networking", "gobject-introspection"]),
        .apt(["libcairo2-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
    ],
    swiftLanguageVersions: [4]
)
