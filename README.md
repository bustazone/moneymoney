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



## Branch Management:


## Configuration (feature flags, live settings):


## Force Update (Suggested, A/B Testing, BigBang):


## CI/CD:

Fastlane







## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
