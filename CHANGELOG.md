## 100.12.1

### Fixed

- Fixed a crash when retrying Motion capture
- Fixed a bug where the document auto-capture scan would fail with a connection error.
- Fixed an accessibility issue where VoiceOver did not announce the search field name when typing in the country selection screen.
- Fixed VoiceOver on the Document Selection screen announcing the screen header and section headers before landing on the previously selected country row when returning from Country Selection.

## 100.12.0

### Fixed

- Fix VoiceOver reading hidden Back and Exit buttons on the camera permission primer screen
- VoiceOver focus now returns to the row that was activated ("Issuing country/region", or a document type such as "Passport" or "National identity card") on the document selection screen after the country picker or the scan screen is dismissed, instead of jumping back to the screen's heading.

## 100.11.0

### Changed

- Error icons on error screens now announce their meaning to VoiceOver, providing screen reader users with the same visual error context as sighted users.

### Fixed

- Fixed the decorative illustration in the document capture "Need help?" carousel being announced by VoiceOver as an unlabelled element, so the sheet now follows a meaningful reading order.
- Fixed the country search placeholder text (e.g. "Search for country") rendering with insufficient colour contrast against its background, which failed WCAG 2.1 AA 1.4.3 Contrast (Minimum) and could disadvantage low vision and colour blind users
- Screen readers now announce the advisory icon's meaning (for example "Information:") before the banner text on the Motion intro screen, so the icon's visual shorthand is no longer lost to assistive technology.
- Fixed intro screen animation being exposed as two separate VoiceOver elements
- Added distinct accessibility descriptions for Motion randomness and classic variants

## 100.10.0

### Added

- Adds on-device image quality assessment for Motion capture, checking frame sharpness, brightness and contrast before/during recording
- Add tracking for navigationBackEvent event when the user navigates to a previous screen

### Fixed

- Fixed an occasional crash during document capture when scanning the back side of a document.
- Fixed "Start scan" button on the document's manual capture flow not responding to custom colour and border radius token overrides.
- Fix the font weight of the list section title on the document selection screen
- Fixed a crash that could occur during the verification flow when web module bootstrap or completion callbacks were delivered more than once, most frequently on slower devices and older iOS versions.
- Section titles on the country selection and document selection screens are now exposed as headings to screen readers.
- The document capture instruction title is now exposed as a heading to screen readers.
- Increases the colour contrast of the next-step arrows and placeholder dots on the Motion capture screen so they meet the WCAG 2.1 AA 3:1 non-text contrast requirement
- The document capture scanning frame now renders a static border instead of the continuous shimmer animation when the system Reduce Motion setting is enabled (WCAG 2.2.2)

## 100.9.0

### Changed

- Improved NFC scan sheet progress reporting.

### Fixed

- Fixed an issue where, with multiple faces detection enabled, the head turn during Motion capture could stop working after another face briefly appeared in view, preventing the user from completing the capture
- Fixed an issue where the selfie camera could stay out of focus after repeatedly starting and leaving the Motion capture screen, which could cause the capture to become blurry and fail
- Fixed an issue where the NFC "Start scan" button could become permanently unresponsive after a failed scan attempt, requiring the user to restart the flow.
- Fixed missing icons on the Motion intro screen

## 100.8.0

### Added

- Added support for remote font loading for native and web modules

### Fixed

- Fixed an issue with face detection not resuming after restarting recording
- Fixed low contrast of back and exit buttons on capture screens
- Fixed an issue where the document capture frame showed a red border on the "Center document" feedback. The border is now consistent across all alignment feedback and aligned with the Android and Web SDKs
- Fixed truncated copy on the NFC scan sheet.
- Fixed an issue where cancelling the native iOS NFC scan sheet left the user on the intro screen instead of navigating to the error screen.
- Fixed a startup crash caused by a framework being missing from the released package

## 100.6.0

### Added

- Added support for Dynamic Text Sizing

## 100.5.0

### Added

- On Studio flows now honor the welcome screen configuration returned by the SDK Configuration API. When the welcome screen is disabled on Studio for a workflow, it is no longer shown at the start of the flow; otherwise the existing behavior is kept.
- Adapted the text (UI) components to support empty strings (in case overrides are empty). Main changes: list items

### Changed

- Added haptic feedback for capture stages in Face Authentication
- Modularise AnalyticsEvents into per-module framework targets
- Reduced the size of translations by approximately 90%
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
