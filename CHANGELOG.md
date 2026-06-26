## 100.5.0

### Changed

- Added haptic feedback for capture stages in Face Authentication
- Modularise AnalyticsEvents into per-module framework targets
- Set explicit VoiceOver traversal order for content screens
- Localize the Play/Pause button on media containers
- Add animation container to VoiceOver
- Assign VoiceOver order for status screens

### Fixed

- Fixed an issue where the device could be rotated to landscape while a bottom sheet (e.g. the help dialog) was open. Bottom sheets are now locked to portrait orientation.
- Fixed an issue where the document-type subtitle was not updated when transitioning to back-side capture, causing the wrong subtitle to be shown after the first frame validation.
- Fixed an issue where "Keep Still" auto-capture feedback was shown alongside the manual capture button when navigating back from a document scan and then selecting a manual-only document type.

## 100.4.0

### Added

- Added the ability to detect and handle multiple faces during the Motion capture flow
- On Studio flows now honor the welcome screen configuration returned by the SDK Configuration API. When the welcome screen is disabled on Studio for a workflow, it is no longer shown at the start of the flow; otherwise the existing behavior is kept.
- Adapted the text (UI) components to support empty strings (in case overrides are empty). Main changes: list items

### Changed

- Fixed Motion freezing when another app has ongoing audio that can't be interrupted
- Add support for customisation of fonts, more specifically: local custom fonts support in both native and web modules
- Reduced the size of translations by approximately 90%

### Fixed

- Attempted to fix rare Motion crash when completing a recording

## 100.3.0

### Changed

- Expose `buttonBorderRadius` and `selectionListItemBorderRadius` as public `Theme` dimension tokens via `BorderRadiusTokens`. This allows the customisation of the button border radius and selectable list items' border radius (used in the document selection and country selection screens)
- Reduced AnalyticsEvent framework binary size

## 100.2.0

### Added

- Implemented Live Selfie Authentication and Light Onboarding-Verify Liveness SDK features
- Added snapshot tests for passive liveness

### Changed

- Remove test assets from release bundle

## 100.1.0

### Added

- Added VoiceOver support for Motion
- Added support for biometric token storage and retrieval Studio tasks

### Changed

- Added snapshot tests for Motion
- Fixed button bottom padding for smaller devices
- Fixed the overlay in Motion incorrectly covering the face area on iPhone SE 1st gen
- Fixed issue with duplicate bundling of frameworks
- Improved primary button styling consistency between `light` and `dark` mode

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
