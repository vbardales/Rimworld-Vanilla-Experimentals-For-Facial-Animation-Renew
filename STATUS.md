---
mod: Vanilla Experimentals for Facial Animation Renew (unofficial)
packageId: nelim.vanillaexperimentalsforfacialanimation
repo: Rimworld-Vanilla-Experimentals-For-Facial-Animation-Renew
remote: https://github.com/vbardales/Rimworld-Vanilla-Experimentals-For-Facial-Animation-Renew.git
visibility: public
detached: yes
workflow_stage: setupRepo
licence: silent
licence_at: "2026-11-10: no licence file or mention in Workshop 3753978140 (SunshineyDays, modVersion 2.3.4, declares 1.6 only); owner decision: author counts as dead, so public with named credit and a withdrawal clause"
upstream_mod_remotes: N/A
settings_audit: unchecked
localization: unchecked
translation_en: unchecked
translation_fr: unchecked
dependencies: unchecked
workshop: none
published: no
tested_on: never
remaining:
  - "2026-11-10: 1.a duplicate search not run by this session: owner says the search was already done (SaB and Audit), no duplicate known"
  - "2026-11-10: parent repo search (gh, owner asked): no repository for VEFA itself. Author account github.com/sunshineydays is ACTIVE (2 repos: sd.fa.geneticheadsframework, MIT, last push 2026-08-06, a sibling mod; sd.MoreRelicQuests). Contradicts 'author dead' and 'abandoned' (PUBLISHING.md: a source declaring 1.6 support is alive, so private and (prohibited)); owner to rule, nothing pushed"
  - "2026-11-10: unverified: GitHub repository not created, first push not done (1.e, 1.i), waits for the owner"
  - "2026-11-10: defect: on 1.7 `1.6/Patches/PatchBase_Experimentals_Parts.xml` fails (PatchOperationSequence of 17 operations dropped; its PatchOperationRemove of Defs/FacialAnimation.EyeballTypeDef[defName=EyeNormal]/altMaskPath fails; same set on 1.6 has no such error; evidence SanctuaryBacklot/Tests/Pickle/Inbox/fa17-load/stdout.txt line 1527). Fix later: success=Always or a PatchOperationConditional on the xpath; then a 1.7 ticket through the TM (map wsl-deps.sanctuary-fa17.map, scenario sanctuary-nelim-check, SaB files it). Do not declare 1.7 before a green 1.7 run"
  - "2026-11-10: unverified: no Mod/About/ModIcon.png and no Preview.png (the original's are not carried over; icon is the mascot, Preview comes at mountPreview)"
  - "2026-11-10: unverified: original ships an AssetBundle (Mod/AssetBundles, 7.8 MB); 1.7 has no AssetBundles (Assets.zip, -BakeModAssetPacks), to settle at the 1.7 pass; two DLLs without source (MovingVanillaEyes.dll, Mods/CharacterEditor/Assemblies/MoreHeadShapes.dll)"
session: local_aabdd426-e7d3-4243-a0ef-9934927042f9
updated: 2026-11-10
protocols_read_sha: 1ed40f7b4c6a67385b1b6b4c911e10e119c24b3c
---

# Vanilla Experimentals for Facial Animation Renew (unofficial): status

Current state only: the front matter above is the source of truth, run lines go to `docs/runs/`.
Check it with `scripts/Check-Status.ps1 -Mod <Folder>` (no ERROR) before the commit that leaves the monorepo.
