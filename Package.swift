// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CommandLineTool",
    dependencies: [
        .package(
            name: "Files",
            url: "https://github.com/johnsundell/files.git",
            from: "4.0.0"
        )
    ],
    targets: [
        .target(
            name: "CommandLineTool",
            dependencies: ["CommandLineToolCore"]
        ),
        .target(
            name: "CommandLineToolCore",
            dependencies: ["Files"]
        ),
        .testTarget(
            name: "CommandLineToolTests",
            dependencies: ["CommandLineToolCore", "Files"]
        )
    ]
)
