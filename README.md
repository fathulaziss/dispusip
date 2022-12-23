# dispusip

Dispusip Mobile App.

## How To Run

Flavor is currently only work with Android build. For iOS, there is no need to call --flavor as argument in every command.

- development:
  ```
  flutter run --flavor dev -t lib/main_dev.dart
  ```

- staging:
  ```
  flutter run --flavor staging -t lib/main_staging.dart
  ```

- production:
  ```
  flutter run --flavor prod -t lib/main_prod.dart
  ```

## How To Build APK

- development:
  ```
  flutter build apk --split-per-abi --flavor dev -t lib/main_dev.dart --release
  ```

- staging:
  ```
  flutter build apk --split-per-abi --flavor staging -t lib/main_staging.dart --release
  ```

- production:
  ```
  flutter build apk --split-per-abi --flavor prod -t lib/main_prod.dart --release
  ```

## How To Create New Feature

Make sure you have already install get_cli on your device. Please check docs on this link : https://pub.dev/packages/get_cli.

Replace feature_name :
  ```
  get create page:feature_name
  ```