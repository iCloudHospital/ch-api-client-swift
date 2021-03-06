// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "CloudHospitalClient",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v9),
        .watchOS(.v3)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CloudHospitalClient",
            targets: ["CloudHospitalClient"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CloudHospitalClient",
            dependencies: ["Alamofire", ],
            path: "CloudHospitalClient/Classes"
        ),
    ]
)
