// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "socket.io-swift-fiddle",
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift", .upToNextMinor(from: "16.0.0"))
    ],
    targets: [
        .target(name: "Fiddle", dependencies: ["SocketIO"])
    ]
)
