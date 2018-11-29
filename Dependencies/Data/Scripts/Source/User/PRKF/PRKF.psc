Scriptname PRKF:PRKF Native Hidden

;return result PP
int Function AddPP(int aiPP) global native

;return result SP
int Function AddSP(int aiSP) global native

;return result PP
int Function GetPP() global native

;return result SP
int Function GetSP() global native

;return false if menu not opened
bool Function UpdateMenu() global native

;used for hotkey
Function OpenMenu() global native

;open menu in traits mode
Function OpenTraitsMenuFL(FormList list, int numTraitsPoints, bool allowCloseWithoutPointsSpending) global native

Function OpenTraitsMenu(string pluginName, int formID, int numTraitsPoints, bool allowCloseWithoutPointsSpending) global
  FormList fl = Game.GetFormFromFile(formID, pluginName) as FormList
  OpenTraitsMenuFL(fl, numTraitsPoints, allowCloseWithoutPointsSpending)
EndFunction

;open menu in tag skills mode
Function OpenTagSkillsMenu(int numberOfTagSkills, int numberOfSkillsPointsAddedToSkill, bool allowRetag) global native

;tag skill
Function AddTagSkillAV(ActorValue skill) global native

Function AddTagSkill(string pluginName, int formID) global
  ActorValue av = Game.GetFormFromFile(formID, pluginName) as ActorValue
  AddTagSkillAV(av)
EndFunction

;untag skill
Function RemoveTagSkillAV(ActorValue skill) global native

Function RemoveTagSkill(string pluginName, int formID) global
  ActorValue av = Game.GetFormFromFile(formID, pluginName) as ActorValue
  RemoveTagSkillAV(av)
EndFunction

;check is tag skill
bool Function IsTagSkillAV(ActorValue skill) global native

bool Function IsTagSkill(string pluginName, int formID) global
  ActorValue av = Game.GetFormFromFile(formID, pluginName) as ActorValue
  return IsTagSkillAV(av)
EndFunction


;There are three external events
;
;Example of usage
;
;RegisterForExternalEvent("PRKF::TagSkills::Tagged", "TagPerkCallback")
;RegisterForExternalEvent("PRKF::TagSkills::UnTagged", "UnTagPerkCallback")
;RegisterForExternalEvent("PRKF::TagSkills::Finish", "TagPerkFinishCallback")
;PRKF:PRKF.OpenTagSkillsMenu(3,15,false)
;
;Function TagPerkCallback(int formid)
;	ActorValue av = Game.GetForm(formid) as ActorValue
;	Debug.Trace("TagPerkCallback: "+av.GetName(), 0)
;EndFunction
;
;Function UnTagPerkCallback(int formid)
;	ActorValue av = Game.GetForm(formid) as ActorValue
;	Debug.Trace("UnTagPerkCallback: "+av.GetName(), 0)
;EndFunction
;
;Function TagPerkFinishCallback()
; Debug.Trace("TagPerkFinishCallback")
;EndFunction
