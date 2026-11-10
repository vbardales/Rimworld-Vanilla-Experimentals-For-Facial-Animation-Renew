# What the 17-operation sequence of PatchBase_Experimentals_Parts.xml writes on the normal eyeball, read on the
# def after the loader has run. The sequence is not gated by a mod setting, so these values hold with the default
# settings. If the removal of altMaskPath fails, the whole sequence is dropped and none of the three holds: the
# first line is then the one that fails, not only the removal.
# Assumption of the first run: the type name is the one the game knows for FacialAnimation.EyeballTypeDef
# (the step lists the valid names when it is wrong), and an absent altMaskPath reads as an empty text.
@requires:nelim.pickletools.loadaudit @requires:nelim.pickletools.deffields
Feature: The parts patch lands on the normal eyeball

  Scenario: the texture path and the shader of EyeNormal are the ones the patch writes
    Given Nelim's Pickle Tools: the game has finished starting
    Then Nelim's Pickle Tools: def "EyeNormal" of type "FacialAnimation.EyeballTypeDef" field "texPath" is "Things/Pawn/Humanlike/Eyes/Normal"
    And Nelim's Pickle Tools: def "EyeNormal" of type "FacialAnimation.EyeballTypeDef" field "shader" is "Map/CutoutComplex"

  Scenario: the alternate mask path of EyeNormal is gone
    Given Nelim's Pickle Tools: the game has finished starting
    Then Nelim's Pickle Tools: def "EyeNormal" of type "FacialAnimation.EyeballTypeDef" field "altMaskPath" is ""
