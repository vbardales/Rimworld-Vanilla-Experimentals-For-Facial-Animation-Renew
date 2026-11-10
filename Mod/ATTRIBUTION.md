# Attribution

## Vanilla Experimentals for Facial Animation 2.3.4

- **Original author:** SunshineyDays (package `sd.fa.movingvanillaeyes`)
- **Source:** Steam Workshop `3753978140`, `modVersion` 2.3.4, declares RimWorld 1.6 only:
  https://steamcommunity.com/sharedfiles/filedetails/?id=3753978140
- **Reused here:** the whole mod, files as shipped: patches, textures, the asset bundle, the
  settings code (`MovingVanillaEyes.dll`) and the Character Editor helper
  (`MoreHeadShapes.dll`).
- **Source repository:** none linked. The original `About.xml` has an empty `<url>` and the mod
  ships no source. The adaptation starts from the Workshop files themselves. If the author
  publishes a repository, send the fixes there first.

## Licence

**No licence is declared**: the mod ships no `LICENSE` file and its description says nothing about
reuse. It is republished as `silent` under the usual practice for abandoned mods: explicit credit,
a link to the original, removal on request. That is stated in the mod's own description, not only
here. Owner decision of 2026-11-10, taken knowing that the author's GitHub account is active
(a sibling mod, `sd.fa.geneticheadsframework`, MIT, last pushed 2026-08-06): the Renew is public.
That MIT licence covers the sibling mod only, not this one.

If SunshineyDays asks for this to come down, it comes down.

## Third-party material inside the original

The original says its textures are adapted from Vanilla Textures Expanded (Facial Animation) and
Reel's Facial Animation, and that only Thick Lids and Short Lids are original to SunshineyDays.
Those two mods stay required for their textures to show.

## What was changed

One patch change. The reason for the Renew: on RimWorld 1.7 the patch file
`1.6/Patches/PatchBase_Experimentals_Parts.xml` fails. Its `PatchOperationSequence` of 17
operations is dropped because the `PatchOperationRemove` on
`Defs/FacialAnimation.EyeballTypeDef[defName="EyeNormal"]/altMaskPath` finds no node. The same set
on 1.6 has no such error. That removal now carries `success="Always"`, so a missing node no longer
drops the sequence. Not yet run on 1.7, and nothing is declared for 1.7 until a 1.7 run is green.

| Point | Decision |
|---|---|
| `packageId` | `sd.fa.movingvanillaeyes` becomes `nelim.vanillaexperimentalsforfacialanimation`, with `<incompatibleWith>` on the original so the two cannot run together. Mod settings start fresh. |
| `<name>`, `<author>`, `<url>` | Renew and `(unofficial)` suffixes, credit line, repository link. |
| `About/PublishedFileId.txt`, `preview.png`, `ModIcon.png` | Not carried over: they belong to the original item. |
| `<description>` | Rewritten with the unofficial notice, credit, adoption clause and source link; the feature list is the author's. |
