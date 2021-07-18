// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KakaoSDK",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library( name: "KakaoSDKAuth", targets: ["KakaoSDKAuth"]),
        .library( name: "KakaoSDKCommon", targets: ["KakaoSDKCommon"]),
        .library( name: "KakaoSDKLink", targets: ["KakaoSDKLink"]),
        .library( name: "KakaoSDKNavi", targets: ["KakaoSDKNavi"]),
        .library( name: "KakaoSDKStory", targets: ["KakaoSDKStory"]),
        .library( name: "KakaoSDKTalk", targets: ["KakaoSDKTalk"]),
        .library( name: "KakaoSDKTemplate", targets: ["KakaoSDKTemplate"]),
        .library( name: "KakaoSDKUser", targets: ["KakaoSDKUser"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target( name: "KakaoSDKAuth", dependencies: []),
        .target( name: "KakaoSDKCommon", dependencies: []),
        .target( name: "KakaoSDKLink", dependencies: []),
        .target( name: "KakaoSDKNavi", dependencies: []),
        .target( name: "KakaoSDKStory", dependencies: []),
        .target( name: "KakaoSDKTalk", dependencies: []),
        .target( name: "KakaoSDKTemplate", dependencies: []),
        .target( name: "KakaoSDKUser", dependencies: []),
    ]
)
