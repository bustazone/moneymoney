# moneymoney

A new Flutter project.

## Scripts:

### lint && format

`dart analyze` -> to be executed inside the CI/CD flow
`dart fix -n` -> (--dry-run) Preview the proposed changes but make no changes.
`dart fix --apply` -> Apply the all the recommended changes

(If it's extrictly justified you can use `//ignore: name_of_lint` and `// ignore_for_file: name_of_lint` syntax on the line or in the file producing the lint.)

### testing (unit & widget)
`flutter test tests/unit`
`flutter test tests/behavior`

### testing (integration)
`flutter test tests/integration`


## Architecture:
https://fluttersamples.com/

    DDD:
https://medium.com/@jonathanloscalzo/domain-driven-design-principios-beneficios-y-elementos-primera-parte-aad90f30aa35

    dependency injection:
https://www.baeldung.com/cs/dependency-injection-vs-service-locator
https://www.sandromaglione.com/articles/how_to_implement_dependecy_injection_in_flutter
https://medium.com/@flutterdynasty/dependency-injection-in-flutter-0f308870d1a5
https://www.dhiwise.com/post/dependency-injection-in-flutter-boosting-app-performance
https://dev.to/alvbarros/dependency-injection-in-flutter-598k

https://pub.dev/packages/get_it
https://pub.dev/packages/injectable

## DB
https://isar.dev/es/

## State management
Riverpod

## Lint:
https://medium.com/podiihq/setting-up-lint-rules-in-dart-flutter-1ebbed0418a6


## Error Managing:


## Analytics:


## Error log:

Sentry
Firebase crashlytics


## Testing:
- [Flutter Testing Documentation](https://docs.flutter.dev/testing/overview)



## Versioning:

We will use an adaptation of semantic release:
- [Semantic Release Documentation](https://github.com/semantic-release/semantic-release)

hotfix:
feat:
bugfix:

Get release commits:
git log --oneline <tag1>..<tag2>
git log --pretty=format:"%s" <tag1>..<tag2>
git log --pretty=format:"%s" v2.0.4..v2.0.5


On Android, we need to set two variables:
→ versionCode, that must be a unique and incremental positive integer. Each release must use a versionCode that is strictly greater than previous releases.
→ versionName, the actual version displayed to the user, which can be pretty much anything
On iOS, we need to pass:
→ a version number, (CFBundleShortVersionString) that is required to be a “three period-separated integers, such as 10.14.1.”
→ a build string (CFBundleVersion) that should be a numerical or semver string, as long as it is unique for a given version number



## Branch Management/Gitflow:


## Configuration (feature flags, live settings):


## Force Update (Suggested, A/B Testing, BigBang):


## Accesibility AA
https://usability.yale.edu/web-accessibility/articles/wcag2-checklist
https://accessible.org/wcag/

## OTP
https://pub.dev/packages/otp_autofill
https://pub.dev/packages/sms_autofill

## Config
https://pub.dev/packages/flutter_config

## Accesos directos
https://pub.dev/packages/quick_actions

## CI/CD:

Fastlane

## Biometric, pin, etc login

https://pub.dev/packages/local_auth

## Screen orientation

https://www.flutterbeads.com/change-lock-device-orientation-portrait-landscape-flutter/?utm_content=cmp-true

## i18n & l10n
https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization

## animations && lottie

https://pub.dev/packages/lottie

## dialog
https://api.flutter.dev/flutter/material/AlertDialog-class.html
https://api.flutter.dev/flutter/material/showDialog.html

## loader, tooltip
https://api.flutter.dev/flutter/widgets/OverlayPortal-class.html

## snackbar
https://api.flutter.dev/flutter/material/ScaffoldMessengerState-class.html

## Storages

https://pub.dev/packages/flutter_secure_storage


## Navigation


## Push Notifications


## Serializer

https://pub.dev/packages/json_serializable
dart run build_runner build --delete-conflicting-outputs

## Security
https://www.indusface.com/learning/how-to-implement-root-detection-in-android-applications/
https://m2pfintech.com/blog/how-to-block-android-app-installation-in-a-rooted-device/
https://www.linkedin.com/pulse/limitations-google-play-integrity-api-ex-safetynet-criticalblue-47cec
https://betterprogramming.pub/preventing-jailbreak-in-ios-apps-best-practices-and-techniques-c1364c833c08

## Native Bridge
https://docs.flutter.dev/platform-integration/platform-channels
https://medium.com/@sdycode/event-channel-method-channel-in-flutter-e6f697472189
https://medium.com/@iiharish97ii/method-channel-in-flutter-bridging-native-code-and-flutter-with-two-way-communication-788d1e91c8c1

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
