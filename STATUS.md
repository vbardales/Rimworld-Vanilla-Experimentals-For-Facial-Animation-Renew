---
mod: Vanilla Experimentals for Facial Animation Renew (unofficial)
packageId: nelim.vanillaexperimentalsforfacialanimation
repo: Rimworld-Vanilla-Experimentals-For-Facial-Animation-Renew
remote: https://github.com/vbardales/Rimworld-Vanilla-Experimentals-For-Facial-Animation-Renew.git
visibility: public
detached: yes
workflow_stage: playTests[1.0.0]
licence: silent
licence_at: "2026-11-10: no licence file or mention in Workshop 3753978140 (SunshineyDays, modVersion 2.3.4, declares 1.6 only); owner decision: author counts as dead, so public with named credit and a withdrawal clause"
upstream_mod_remotes: N/A
settings_audit: partial
localization: complete
translation_en: complete
translation_fr: complete
dependencies: "2026-11-10 at code[1.0.0]: hard Harmony, [NL] Facial Animation (nals.facialanimation), [NL] Facial Animation - Experimentals (nals.facialanimationexperimentals), VTE - [NL] Facial Animation (vanillaexpanded.vtexe.facialanims), all kept as the author declared them (VTE is also read through a PatchOperationFindMod, so it may be softer than declared: author choice kept, no behaviour change); loadAfter order only: reel.facialanims (Reel textures patch via FindMod), lucius.eyegenes3 and oppey.eyegenes2 (EyeGenes patch via FindMod), ferny.nomouths (Mods/NoMouths IfModActive), sd.fa.geneticheadsanomaly; loadBefore astryl.FacialAnimationPerformancePatch; OptionalCompat.xml: void.charactereditor (patch, Mods/CharacterEditor IfModActive); incompatibleWith sd.fa.movingvanillaeyes (the original); no DLC; no animal, so ANIMALS.md n/a; load order cycle check not run (sort-load-order.py needs a Pickle staging)"
workshop: none
published: no
tested_on: never
remaining:
  - "2026-11-10: 1.a duplicate search not run by this session: owner says the search was already done (SaB and Audit), no duplicate known"
  - "2026-11-10: parent repo search (gh, owner asked): no repository for VEFA itself. Author account github.com/sunshineydays is ACTIVE (2 repos: sd.fa.geneticheadsframework, MIT, last push 2026-08-06, a sibling mod; sd.MoreRelicQuests). Contradicts 'author dead' and 'abandoned' (PUBLISHING.md: a source declaring 1.6 support is alive, so private and (prohibited)); owner ruled 2026-11-10: public"
  - "2026-11-10: 1.e to 1.k done: public repository created, topics set, first push at fb1ddd1+, makeSources"
  - "2026-11-10: unverified: 1.7 fix written (success=Always on the altMaskPath removal), unplayed. On 1.7 `1.6/Patches/PatchBase_Experimentals_Parts.xml` fails (PatchOperationSequence of 17 operations dropped; its PatchOperationRemove of Defs/FacialAnimation.EyeballTypeDef[defName=EyeNormal]/altMaskPath fails; same set on 1.6 has no such error; evidence SanctuaryBacklot/Tests/Pickle/Inbox/fa17-load/stdout.txt line 1527). Next, at playTests: a 1.7 ticket through the TM (map wsl-deps.sanctuary-fa17.map, scenario sanctuary-nelim-check, SaB files it). Do not declare 1.7 before a green 1.7 run"
  - "2026-11-10: 2.a to 2.c done: Art/ModIcon-source.png delivered by the owner (1254x1254), Mod/About/ModIcon.png derived with ffmpeg (128x128 rgba, 21.1 KB), Art/ModIcon.ico derived (git-ignored). No Preview yet: it is made once at mountPreview"
  - "2026-11-10: unverified: original ships an AssetBundle (Mod/AssetBundles, 7.8 MB); 1.7 has no AssetBundles (Assets.zip, -BakeModAssetPacks), to settle at the 1.7 pass; two DLLs without source (MovingVanillaEyes.dll, Mods/CharacterEditor/Assemblies/MoreHeadShapes.dll)"
  - "2026-11-10: defect: 5.d no hidden MainButtons shortcut (the original has no MainButtonDef; adding one needs C#, and the mod ships no source, only MovingVanillaEyes.dll). Needs a decision: new small assembly under Source/ or a justified exception, to ask Virginie at playTests"
  - "2026-11-10: unverified: 5.e/5.f in-game checks (defaults, dependent controls such as eye movement vs new eye textures, restart notice with the Performance Patch, persistence, logs): playTests; defaults not read from the DLL"
  - "2026-11-10: ChatGPT review applied (4 keys: effet de chaud became effet de chaleur; PUBLICATION.md not written yet, not reviewable). 6.g French review validated by Virginie 2026-11-10 at 055987e. unverified: texts hard-coded in the DLL are unknown (no source), and no raw-key or clipping check before playTests"
  - "2026-11-10: unverified: writeTests done, nothing run: TESTING.md, Tests/Pickle (2 features, 3 scenarios, wsl-deps.minimal.map, Check-Steps OK: every line resolves to one step). Next: ticket pass minimal on 1.6 via the TM (file-pickle-ticket), then the 1.7 ticket (map wsl-deps.sanctuary-fa17.map, scenario sanctuary-nelim-check, SaB files it). Assumptions to confirm: type name FacialAnimation.EyeballTypeDef, absent altMaskPath reads empty. Settings options (12) have no Pickle step to set them: ask NPT at playTests. No local script, no row in LOCAL_SCRIPTS.md"
session: local_aabdd426-e7d3-4243-a0ef-9934927042f9
updated: 2026-11-10
protocols_read_sha: 3bf77796802dc6d5fd501376be3c22bc53c5a4ff
---

# Vanilla Experimentals for Facial Animation Renew (unofficial): status

Current state only: the front matter above is the source of truth, run lines go to `docs/runs/`.
Check it with `scripts/Check-Status.ps1 -Mod <Folder>` (no ERROR) before the commit that leaves the monorepo.

## Settings audit

2026-11-10, revision of the first push plus the dependency commit, `Mod/` as copied from Workshop 3753978140 (2.3.4), no source: inspection of the metadata strings of `Mod/1.6/Assemblies/MovingVanillaEyes.dll` and of `Mod/Languages/English/Keyed/MovingVanillaEyes_Settings.xml`. Nothing was run in game.

- **Access (5.c):** `MovingVanillaEyesMod` (a `Mod`) draws `DoSettingsWindowContents`; category key `MVE_Settings_Category`, so Mod options, Vanilla Experimentals for Facial Animation. A `ModSettings` class persists the values with `Scribe_Values` (global, one file).
- **Options (5.a), twelve, each with label and tooltip keys:** ExperimentalEyeTextures, EyeMovement, RandomEyeColors, VanillaNarrowHeads (inverted: "Disable narrow head fix"), MoreRetexturedHeads, BlushLimiting, HalfLiddedEyes, Tears, TemperatureOverlays, SickHotOverlay, EmotiveMouths, DisableGloomyFlee. They drive `PatchOperationIfSettingTrue` / `IfSettingFalse` in the patch files and runtime checks in the assembly; each has a concrete use, none is decorative.
- **Timing (5.e):** a restart notice exists (`MVE_Settings_RestartRequiredLabel`, and a notice when the Facial Animation Performance Patch is active: changes apply after a restart). Patch-driven options are read at load, so they apply after a restart.
- **Shortcut (5.d):** absent. See `remaining`.
- **Translation readiness:** all displayed text goes through `MVE_Settings_*` keys; only `Languages/English` exists, no French yet.
- **Decision:** `settings_audit: partial`. Analysis done; no automated test exists for this mod yet; in-game checks (5.f) wait for playTests.

## Translation audit

2026-11-10. Texts shown to the player: the 15 `MVE_Settings_*` Keyed keys (settings page: category, restart label and notice, 12 options with label and tooltip). English is the original's `Languages/English/Keyed/MovingVanillaEyes_Settings.xml`. French is new: `Languages/French/Keyed/MovingVanillaEyes_Settings.xml`, written by this session, no tu, no vous, infinitive for labels, third person for tooltips. `Check-Translations.ps1`: PASS (0 DefInjected sources; it does not read the DLL). `TRANSLATION_REVIEW.md` generated. French reviewed and validated by Virginie on 2026-11-10 at revision 055987e, no correction (AUDIT 6.g); two ChatGPT passes applied (effet de chaleur). Doubts to check at review: "têtes supplémentaires et retexturées" for "More and Retextured Heads", "effet sombre" for "gloomy overlay", "colons qui ont la pensée « malade »" for the Sick thought.
