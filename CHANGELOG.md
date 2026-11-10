# Changelog

Format inspired by [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
This file serves the repository and the writing of Steam patch notes; RimWorld does not display
it in game.

## [Unreleased]

First release of the adaptation of SunshineyDays' **Vanilla Experimentals for Facial Animation**
2.3.4. On release: create the `v1.0.0` tag and the matching GitHub release.

### Added

- Files of the original, unchanged, under `Mod/`.
- `LICENSE` (MIT over the adaptation work alone), `ATTRIBUTION.md` and this changelog.

### Changed

- `packageId` is `nelim.vanillaexperimentalsforfacialanimation`, with `<incompatibleWith>` on
  `sd.fa.movingvanillaeyes`. Mod settings start fresh.
- Name, author line, `<url>` and description carry the Renew and unofficial notices.

### Planned

- Make the `PatchOperationRemove` on the `EyeNormal` `altMaskPath` in
  `1.6/Patches/PatchBase_Experimentals_Parts.xml` tolerant, so the 17-operation sequence is no
  longer dropped on RimWorld 1.7. Not declared for 1.7 before a green 1.7 run.
