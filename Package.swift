// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "KakaoSDK",
  platforms: [.iOS(.v11)],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library( name: "KakaoSDKCommon", targets: ["KakaoSDKCommon"]),
    .library( name: "KakaoSDKAuth", targets: ["KakaoSDKAuth"]),
    .library( name: "KakaoSDKLink", targets: ["KakaoSDKLink"]),
    .library( name: "KakaoSDKNavi", targets: ["KakaoSDKNavi"]),
    .library( name: "KakaoSDKStory", targets: ["KakaoSDKStory"]),
    .library( name: "KakaoSDKTalk", targets: ["KakaoSDKTalk"]),
    .library( name: "KakaoSDKTemplate", targets: ["KakaoSDKTemplate"]),
    .library( name: "KakaoSDKUser", targets: ["KakaoSDKUser"]),
  ],

  dependencies: [
    .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.1.0"))
  ],

  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target( name: "KakaoSDKCommon",
             dependencies: [ "Alamofire" ],
             swiftSettings: [.define("APPLICATION_EXTENSION_API_ONLY=NO", nil)]
           ),
    .target( name: "KakaoSDKAuth", dependencies: [ "KakaoSDKCommon", ]),
    .target( name: "KakaoSDKLink", dependencies: [ "KakaoSDKCommon", "KakaoSDKTemplate", ]),
    .target( name: "KakaoSDKNavi", dependencies: [ "KakaoSDKCommon", ]),
    .target( name: "KakaoSDKStory", dependencies: [ "KakaoSDKUser", ]),
    .target( name: "KakaoSDKTalk", dependencies: [ "KakaoSDKTemplate", "KakaoSDKUser", ]),
    .target( name: "KakaoSDKTemplate", dependencies: [ "KakaoSDKCommon", ]),
    .target( name: "KakaoSDKUser", dependencies: [ "KakaoSDKAuth", ]),
  ]
)
