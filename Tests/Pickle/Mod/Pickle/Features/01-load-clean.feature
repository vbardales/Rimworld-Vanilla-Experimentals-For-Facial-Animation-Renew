# The 1.7 defect of the original was a patch error logged at load: the 17-operation sequence of
# PatchBase_Experimentals_Parts.xml was dropped because a removal found no node. Only a running game logs it,
# so only a running game can show it gone. Pass "minimal": the mod, its four dependencies, Pickle, DefFieldSteps.
# On 1.6 the same set must read clean as well: the tolerant removal must not change what 1.6 does.
@requires:nelim.pickletools.loadaudit
Feature: The mod loads without a patch error

  Scenario: the load of the mod is clean
    Given Nelim's Pickle Tools: the game has finished starting
    Then Nelim's Pickle Tools: the load of the mod "nelim.vanillaexperimentalsforfacialanimation" is clean
