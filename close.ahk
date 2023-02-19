#SingleInstance, force
#NoEnv

WinGet, id, list

Loop, %id%
{
   this_id := id%A_Index%
   WinGetTitle, this_title, ahk_id %this_id%
   
   If (this_title != "Program Manager") && (this_title != "Windows Task Manager") && (this_title != "Settings") && (this_title != "File Explorer")
   {
      WinKill, ahk_id %this_id%
   }
}
