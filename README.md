# Capture SDK for iOS

iOS SDK using capture architecture.

<img src="/logo.png" alt="Logo"  height="100" />

With project flex we're replicating the [capture architecture](https://onfido.atlassian.net/wiki/spaces/SDK/pages/342819143/Capture+101+Evergreen+architecture+overview+RFC)
for the native sdks.

## Requirements

- Xcode 16+

## Setup

1. Open OnfidoSDK.xcworkspace
2. Run `./Scripts/setup.sh` (installs Brew dependencies, Git LFS, pre-commit hooks, and syncs submodules)
3. Enjoy coding!

> **Submodule issues?** If you hit build errors related to submodules (missing files, wrong commits), run:
> ```bash
> ./Scripts/sync-submodules.sh
> ```
> This is also called automatically by `./Scripts/setup.sh`.

## SDK Size

For a breakdown of the SDK's size impact per module, see the auto-generated [size.md](size.md) report. This file is created on every merge to develop and at release time. It shows the IPA size (arm64) for the base app and each native module combination.

## Contributing

### MR Titles

We use [Gitmoji](https://gitmoji.dev/) in our MR titles, as an easy way to visually identify what the main focus of any given MR is. The format for MR titles should be the following:

🐛 Fix trial screen not appearing [SDK-1234]

Please note; We use an imperative approach for both our commit and MR titles. You can see this, for the commit messages, in our [Git Practices](https://arc.net/l/quote/vcdzuklm) confluence document. We adopt the same for the MR titles.

### Commit Messages

As mentioned above, refer to [Git Practices](https://arc.net/l/quote/vcdzuklm) for how a message should be written. We also use Gitmoji here for each commit. In this case, the commit would be written similar to the MR title, without the ticket number.

🐛 Fix trial screen not appearing

Currently, we're still squashing our MRs, so the important thing is the MR title, as the commits are squashed. This may change in future, in which case we would require **all** commit messages to be written correctly as well.

### Changelog

#### How changelogs work

Individual changelog entries are stored as JSON files under `changelogs/<version>/public/` and `changelogs/<version>/internal/` (or `changelogs/unreleased/` for in-progress work). Each JSON file follows the schema defined in `Scripts/changelog/`.

When a release branch (`release/<version>`) is created and the CI pipeline runs:

1. **Assembly** — The `assemble_changelogs_and_migration_guide` CI job runs `Scripts/changelog/bin/assemble_changelogs.rb` to collect all JSON entries and produce `changelog-public.md` and `changelog-internal.md` at the repo root.

2. **GitHub push** — The `publish_release` job copies `changelog-public.md` to `CHANGELOG.md` at the root of the public GitHub repo ([EntrustCorporation/IdvSDK-iOS](https://github.com/EntrustCorporation/IdvSDK-iOS)) and pushes it to `main`.

3. **DevHub rebuild** — The `update_devhub_changelog` job triggers a new pipeline on the [api-docs](https://gitlab.eu-west-1.mgmt.onfido.xyz/onfido/integration-experience/api-docs) repo. During the api-docs build, the `scripts/references/index.ts` script pulls `CHANGELOG.md` from the GitHub repo and writes it to the documentation pages automatically.

#### How to create a changelog entry

- `cd Scripts/changelog`
- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) must be installed in your system. Suggested version is 3.x.x.
- Ensure **bundler** is installed as well. If not, run `gem install bundler`
- Run `bundle install` to install the required dependencies
- Enter `cd ..` to return to the **scripts** folder
- Run `bash generate_changelog_entry.sh` to generate changelog entry at 
  **<rootdir>/changelogs/unreleased/<branchname>.json**
- Confirm **changelog** job is green on CI ✅

Every MR must include a changelog entry — the CI `changelog_validation` job validates this.

## Running Tests

Tests are run via Xcode using the `OnfidoSDK.xcworkspace`. The table below outlines the different test types, their schemes, and test plans.

| Test Type | Scheme | Test Plan | Notes |
|---|---|---|---|
| Unit Tests | `Core` | `Default` | Standard unit tests for core SDK functionality. |
| Integration Tests | `Core` | `IntegrationTests` | Uses the same scheme as unit tests but a different test plan. |
| E2E Tests | `E2E` | `E2E_Native` / `E2E_Web` | Two plans available — Native and Web. (Attached screenshots below on how to change) |
| Snapshot Tests | `StorybookTests` | _(scheme default)_ | **Must be run on an iPhone 11** to match CI results. |

<table>
  <tr>
    <td align="center"><img src="test_navigator_screenshot.png" alt="Xcode Test Navigator — selecting the E2E scheme" /><br/><em>Selecting the E2E scheme in the Test Navigator</em></td>
    <td align="center"><img src="test_plan_screenshot.png" alt="Xcode Test Plan Selector — switching between E2E_Native and E2E_Web" /><br/><em>Switching test plan between E2E_Native and E2E_Web</em></td>
  </tr>
</table>

### Recording Snapshot Tests

To re-record snapshot tests for the Storybook target, use the provided Makefile:

```bash
make record_snapshots
```

This command will:
1. Delete existing snapshots in `OnfidoApplications/StorybookTests/__Snapshots__`
2. Run all snapshot tests on an iPhone 11 (18.6) simulator
3. Record new reference snapshots

## Debugging on device

In order to debug our test app on a real device, the associated development certificate and provisioning profile have to be installed. Both are located under `Scripts/signing/`. The password for the certificate is stored in 1Password under `ios-sdk-certs`.

## Satellite Release Submodule Status

This SDK depends on several satellite repositories, each managed differently in terms of branching and versioning. The table below summarises how each submodule should be tracked.

> **Note:** There is no formal semantic versioning applied consistently across these repositories.
> 
> **Important:** This DACI ([Satellite Repo Release Management](https://onfido.atlassian.net/wiki/spaces/SDK/pages/3151724630/Satellite+Repo+Release+Management)) aims to improve the management of these submodules.

| Repository | Branch | Update Strategy | Notes |
|---|---|---|---|
| `capture-i18n` | `swift-keys` | Latest commit on `swift-keys` | The active branch is `swift-keys`, not `swift`. Always use the latest commit from `swift-keys`. |
| `capture-api` | `swift` | Latest `swift-vmaster-*` tag | Use the most recent `swift-vmaster-*` tag available on the `swift` branch. Do not use the branch HEAD directly. |
| `capture-contract` | `swift` | Latest `swift-vmaster-*` tag | Same strategy as `capture-api`. Use the most recent `swift-vmaster-*` tag on the `swift` branch. |
| `UITokens` | `swift` | No tagging in place — requires follow-up | There is no `swift-vmaster-*` tagging for this repo. Updates are currently driven by MR merges to the `swift` branch. The latest commit cannot be assumed to be stable. A follow-up task is required to establish a reliable update strategy before this submodule can be pinned consistently. |
| `analytics-swift` | `master` | Latest commit on `master` | This repository uses a separate `analytics-swift` repo. The `master` branch is always up to date and can be tracked directly using the latest commit. |

## Automated Release Pipeline

The bulk of the release process is automated via GitLab CI. The pipeline configuration lives in the [Mobile SDK CI repository](https://gitlab.eu-west-1.mgmt.onfido.xyz/onfido/sdks/ci), which provides the shared job templates that this project extends.

### Release Job Dependencies

While mostly automated, ironically, the release pipeline has a strict chain of manual jobs. Each requiring the previous to have succeeded:

1. **`approve_release`** — Confirms the release is ready. Assembles and moves changelogs, tagging the release commit. Must be triggered manually once all pre-release checks pass. **Important note:** This should only be triggered when everything is verified that the release can go live.

2. **`publish_release`** — Becomes available after `approve_release` succeeds. Pushes the updated `Package.swift`, `size.md` and `README.md` to the public [EntrustCorporation/IdvSDK-iOS](https://github.com/EntrustCorporation/IdvSDK-iOS) repository, as well as creating and pushing an annotated version tag. In turn, a GitHub Action is triggered from the IdvSDK-iOS repository, that publishes this as the latest GitHub Release.

> [!NOTE] This and the following "publish_sample_app" job must be manually executed from the same pipeline as the one that "approve_release" was performed from. The "approve_release" job will create a new commit that skips CI, so the latest pipeline for the MR will not be the one to publish the release from (This ideally requires improvement). You can find the pipeline for this in the "Pipelines" section if you do not have it open already.

3. **`publish_sample_app`** — Becomes available after `publish_release` succeeds. Validates the GitHub release is live, sets the SampleApp's Swift Package dependency to target the newly published release version, and pushes the updated SampleApp to the public GitHub repository. **Important Note:** This is another manual action and must be done before merging the release MR. Please ensure that the tag is live on GitHub before running this action. It will fail otherwise.

> [!WARNING] publish_sample_app is the last required step before merging the release MR. It is a manual job and must be triggered and pass successfully. The pipeline will not be considered green until it does. Do not merge the release MR until this job has completed.

## Manual Release Process

1. Create a branch named `release/X.X.X`, where the version follows [semantic versioning](https://semver.org/) rules, off of `develop`.
2. Open `internal.yml` and uncomment `upload_dynamic_frameworks_to_s3` in `generate-frameworks-and-size-report`. (If it's already uncommented, ignore this step)
3. Create an MR for the release branch, the title must follow this format: `🔖 Release X.X.X`, targeting `main`.
4. Verify the MR has been created and that pipelines are running.
5. Once the `generate-frameworks-and-size-report` job has completed, the release artefacts are available on S3, and a `Package.swift` file should be available on Bitrise.
6. Retrieve the Bitrise build URL for the release MR by inspecting the full log of the `generate-frameworks-and-size-report` job. Look for a line beginning with `Build URL: https://app.bitrise.io`.
7. Open the **Artefacts** tab in Bitrise.
8. Download the `Package.swift` file.
9. Launch **AWS Multi Account** via Okta.
10. Under **Account: onfido-production**, select the `tf-sdk-team-role`.
11. Navigate to the **S3** service.
12. Locate and open the bucket named exactly `onfido-sdks`.
13. Navigate to the `ios/flex` directory within the bucket.
14. Verify the expected modules are available. The modules expected to be in S3 are those listed in the downloaded `Package.swift` from Step 8.
15. Check out our internal staging repository: [entrust-flex-ios](https://gitlab.eu-west-1.mgmt.onfido.xyz/onfido/sdks/entrust-flex-ios).
16. Using `main` in this repo, replace the `Package.swift` file with the one downloaded in Step 8.
17. Run the project, to ensure this package can resolve. You can also do this with `swift build` in the root of the project.
18. If the package is resolving correctly, push to `main` on this repo. This repo is our internal staging, and having `main` as the latest release is desired.
19. Using the `SampleApp` in our iOS Flex project, verify the internal staging package is working. Run the following script from the root of the iOS Flex project to point the SampleApp at the internal staging repo:
   ```sh
   export IOS_STAGING_TOKEN=<token>
   ./Scripts/set_sample_app_package_mode.sh debug X.X.X
   ```
   - You can get the token in 1Password. `Onfido - SDK Support` vault. Token named: `entrust-flex-ios: WRITE_REPO_TOKEN`
20. Run the SampleApp and verify it is functioning correctly with the new release. Do not commit any of this.
21. Check out the public SDK repository: [EntrustCorporation/IdvSDK-iOS](https://github.com/EntrustCorporation/IdvSDK-iOS).
22. Update the `Package.swift` file in this repo, with what was downloaded from Step 8.
23. Update the `size.md` and `publicDocs/README.md` files in this repo. These can be found in the Release MR. It's a manual copy/paste for now.
24. Ensure only the `Package.swift`, `publicDocs/README.md` and `size.md` files are committed. There may be "noisy" files.
25. Tag this release with the respective release version. That of the MR. If unsure, can be found in `VERSION` of the release MR.
26. Push this to `main` on the GitHub repo.
27. Create a new release following the usual GitHub steps. Ensure it's public as the latest release.
28. Update the SampleApp in this public SDK repository to target the newly published release version.
29. Verify the SampleApp is functioning correctly with the new version.
30. Commit the required changes. The only files that should be committed can be seen here:

   ![SampleApp commits](SampleApp_commits.png)

31. This commit **does not need to be tagged**, simply push it to `main` once you've verified things are operating properly.
