import PackageDescription

let package = Package(
    name: "testSdkStandalone",
    dependencies: [
        .Package(url: "https://github.com/ibm-bluemix-mobile-services/bluemix-simple-http-client-swift.git", majorVersion: 0, minor: 6),
        .Package(url: "https://github.com/Hearst-DD/ObjectMapper", majorVersion: 2, minor: 2)
    ]
)
