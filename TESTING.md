# Testing

Written 2026-11-10 at `writeTests[1.0.0]`. **Nothing here has run.** Running the suite is the work of `playTests`.

The mod is the original's files, unchanged, plus one patch tolerance (`success="Always"` on the removal of
`EyeNormal/altMaskPath`) and a French settings translation. It ships no source, so there is no unit test and no
build to replay (7.b not applicable, 7.c below).

## In Gherkin (`Tests/Pickle/Mod/Pickle/Features/`), pass `minimal` (`Tests/Pickle/wsl-deps.minimal.map`)

| Feature | What it shows | Why it needs a game |
|---|---|---|
| `01-load-clean` | The load of the mod logs no patch error, with Harmony, [NL] Facial Animation, Experimentals and VTE | Patch errors are written to the game log by the loader, nowhere else |
| `02-parts-patch-lands` | `EyeNormal` ends with `texPath` `Things/Pawn/Humanlike/Eyes/Normal`, shader `Map/CutoutComplex` and no `altMaskPath`: the 17-operation sequence landed | Only the def after the loader shows a patch that landed |

Run both on RimWorld 1.6 first (`playTests`), then once on 1.7 through the Ticket Manager (map
`wsl-deps.sanctuary-fa17.map`, scenario `sanctuary-nelim-check`, filed by SaB): the 1.7 run is the one that proves the fix.
`1.7` is not declared in `supportedVersions` before that run is green.

## Not in Gherkin, and why

| Check | Where it went | Why |
|---|---|---|
| The twelve settings change what they promise (eye movement, tears, overlays, mouths, heads, blush) | `playTests`, `unverified` | Pickle has no step to set a mod setting or to read a pawn's drawn face state for these options; to ask NPT at `playTests` rather than write a local step |
| Settings page opens from Mod options, restart notice, persistence | `playTests`, `unverified` | `MOD_SETTINGS.md` section 4; needs the interface |
| Hidden MainButtons shortcut | defect, see `STATUS.md` | The mod has none and ships no source to add one |
| French strings on the settings page | `playTests` | Clipping and raw keys are only visible in game; the Keyed keys are covered by `Check-Translations.ps1` (PASS) |
| Incompatibility with the original | `About.xml` `incompatibleWith` | The engine's own warning, not the mod's behaviour; the declaration is checked in the file |
| XML tests (7.c) | not applicable | No Def of its own: the patch files edit defs of other mods, and only the loaded game resolves them |
| Optional integrations: Reel's textures, EyeGenes, NoMouths, Character Editor | not played | Each needs its own mod set; guarded patches log nothing when the mod is absent, `01-load-clean` covers the absent case |

## Assumptions the first run will confirm or break

- The type name `FacialAnimation.EyeballTypeDef` is accepted by `def ... of type ...`; if not, the step lists the valid names.
- An absent `altMaskPath` reads as an empty text.
- The load of the mod reads clean on 1.6 with only the four dependencies: any warning of the dependencies themselves is to be
  justified with `... is clean, apart from ...`, never silenced without a reason.
