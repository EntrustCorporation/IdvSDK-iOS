## 100.2.0

### Added

- Implemented Live Selfie Authentication and Light Onboarding-Verify Liveness SDK features
- Added snapshot tests for passive liveness

### Changed

- Remove test assets from release bundle

## 100.1.0

### Added

- Added support for biometric token storage and retrieval Studio tasks
- Added VoiceOver support for Motion

### Changed

- Improved primary button styling consistency between `light` and `dark` mode
- Added snapshot tests for Motion
- Fixed button bottom padding for smaller devices
- Fixed the overlay in Motion incorrectly covering the face area on iPhone SE 1st gen
- Fixed issue with duplicate bundling of frameworks

### Fixed

- Fixed a crash when opening Motion on iPhone SE 1st gen
- Fix crash due to registering theme in DI late

## 100.0.0

### Changed

- Call `onError` callback when SDK Config request fails, instead of using defaults

### Fixed

- Fixed issue where screen flashes white between module transitions in `dark` mode
- Fixed issue where an optional NFC step could lead to a crash when the respective native module wasn't registered
- Fixed web module bootstrapping errors not being reported via `onError` callback
