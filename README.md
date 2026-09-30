# AegisGuardian for iOS (binary distribution)

Prebuilt `AegisGuardian.xcframework` for iOS apps: runtime security checks (jailbreak,
simulator, debugger, hooking, proxy, VPN), explicit security policies, Keychain device
identity, Secure Enclave signing, App Attest client helpers, screen privacy, and
fail-closed URLSession SPKI pinning. Premium Frida signals and dashboard decisions come
from Aegis Sentinel.

Source code, documentation and the Android and Flutter SDKs live in
[jimmyleonardo/aegis-guardian](https://github.com/jimmyleonardo/aegis-guardian).

## Current releases

| Platform | Version | Install |
|---|---|---|
| iOS | 3.2.0 | Swift Package Manager (recommended) or CocoaPods |
| Android | 3.2.0 | Maven Central: `io.github.jimmyleonardo:aegis-guardian:3.2.0` |
| Flutter | 3.2.0 | pub.dev: [`aegis_guardian`](https://pub.dev/packages/aegis_guardian) |

Release notes: [CHANGELOG](https://github.com/jimmyleonardo/aegis-guardian/blob/main/CHANGELOG.md).

## Requirements

- iOS 15 or later.
- Built and tested with **Xcode 27 (Swift 6.4)**. Older Xcode versions are untested and
  may not be able to import the binary module.

## Install

### Swift Package Manager (recommended)

In Xcode: **File → Add Package Dependencies…** and enter
`https://github.com/jimmyleonardo/aegis-guardian-ios-binary.git`, or in `Package.swift`:

```swift
.package(url: "https://github.com/jimmyleonardo/aegis-guardian-ios-binary.git", exact: "3.2.0")
```

Add the `AegisGuardian` product to your target and `import AegisGuardian`.

### CocoaPods (legacy)

CocoaPods Trunk is becoming read-only, so new releases may stop reaching CocoaPods.
Prefer Swift Package Manager for new projects.

```ruby
pod 'AegisGuardian', '3.2.0'
```

## Quick start

```swift
import AegisGuardian

let guardian = Guardian(
    policy: SecurityPolicy(blockedChecks: [.root, .frida, .hooking]),
    expectedBundleIdentifier: "com.example.app"
)
let report = await Task.detached { guardian.inspect() }.value   // off the main thread
if !guardian.policy.evaluate(report).allowed {
    // Stop the sensitive operation or ask your backend for step-up.
}

// Screen privacy: keep a reference for each sensitive window.
let shield = ScreenShield(window: window)
```

`inspect()` runs locally and sends nothing. Frida detection, server-verified app
identity and blacklist results require Aegis Sentinel; see the
[iOS guide](https://github.com/jimmyleonardo/aegis-guardian/blob/main/ios/README.md).

## Limits

- Every on-device check can be bypassed by an attacker who hooks the app. Use the results
  as signals and make the final decision on your server.
- iOS cannot block screenshots; `ScreenShield` hides content while the app is inactive
  or being captured.
- App Attest runs only on physical devices, not in the Simulator.

## Documentation

- [iOS guide](https://github.com/jimmyleonardo/aegis-guardian/blob/main/ios/README.md)
- [Security model](https://github.com/jimmyleonardo/aegis-guardian/blob/main/docs/security-model.md)
- [3.2.0 migration guide](https://github.com/jimmyleonardo/aegis-guardian/blob/main/docs/migration-3.2.0.md)
- [Changelog](https://github.com/jimmyleonardo/aegis-guardian/blob/main/CHANGELOG.md)

## License

Apache License 2.0. See [LICENSE](https://github.com/jimmyleonardo/aegis-guardian-ios-binary/blob/main/LICENSE).

## Optional automatic App Attest (3.2.0)

Configure `SentinelConfig(baseURL: sentinelURL, clientId: publicClientId,
appAttestEnabled: true)` to enroll automatically and submit verified telemetry.
The signed host must enable App Attest and Sentinel must contain the matching
Bundle ID and Apple Team ID. With `appAttestEnabled: false` (the default), iOS
still sends telemetry as `UNVERIFIED` using only URL and Client ID. Opted-in
App Attest failures do not fall back to unverified submissions.

Production App Attest enrollment and telemetry were confirmed through the Flutter
Pulse Pilates release app on a physical iPhone 11 on 2026-09-30. The XCFramework
includes matching device and simulator dSYMs.
