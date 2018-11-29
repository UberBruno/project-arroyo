Scriptname PBT:PBT Native Hidden

;return false if menu not opened
bool Function UpdateMenu() global native

  ;mark note as readed
  Function AddReadedNoteMESG(Message msg) global native

  Function AddReadedNote(string pluginName, int formID) global
    Message msg = Game.GetFormFromFile(formID, pluginName) as Message
    AddReadedNoteMESG(msg)
  EndFunction

  ;mark note as not readed
  Function RemoveReadedNoteMESG(Message msg) global native

  Function RemoveReadedNote(string pluginName, int formID) global
    Message msg = Game.GetFormFromFile(formID, pluginName) as Message
    RemoveReadedNoteMESG(msg)
  EndFunction
  
  ;check is note readed
  bool Function IsReadedNoteMESG(Message msg) global native

  bool Function IsReadedNote(string pluginName, int formID) global
    Message msg = Game.GetFormFromFile(formID, pluginName) as Message
    return IsReadedNoteMESG(msg)
  EndFunction

  ;There are external event sended when item pressed
  ;
  ;Example of usage
  ;
  ;RegisterForExternalEvent("PBT_ItemPressed", "PBT_ItemPressed")
  ;
  ;Function PBT_ItemPressed(string id, int formid)
  ;	Debug.MessageBox("PBT_ItemPressed "+ id + " " + formid)
  ;EndFunction
