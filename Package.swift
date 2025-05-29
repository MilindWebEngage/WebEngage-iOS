
import PackageDescription

let package = Package(
    name: "WebEngage",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Equivalent of `pod 'WebEngage/Core'`
        .library(
            name: "WebEngageCore",
            targets: ["WebEngage"]
        ),
        // Equivalent of `pod 'WebEngage'` (includes Core + Location)
        .library(
            name: "WebEngage",
            targets: ["WebEngage", "WELocation"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "WebEngage",
            url: "https://webengage-sdk.s3.us-west-2.amazonaws.com/ios/spm/WebEngage.xcframework.zip",
            checksum: "60df6206ca96d92a79ae73e66348e20c7c343f6364a5b5f220a5ecb3f33d7ff9"
        ),
        .binaryTarget(
            name: "WELocation",
            url: "https://webengage-sdk.s3.us-west-2.amazonaws.com/ios/spm/WELocation.xcframework.zip",
            checksum: "82de5781bdc23344c7ba035434c011877de05de4e9059e7810383bf170e4cb5f"
        )
    ]
)
