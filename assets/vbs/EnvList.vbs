'---------------------------------------------------------------------------'
' NAME:       environment.vbs                                               '
' AUTHORS:    Ben Willems (2034483Willems@hszuyd.nl)                        '
'             Pascal de Bruijn (2033942Bruijn@hszuyd.nl)                    '
' DESC:       Changes environment variables.                                '
' NO:         9                                                             '
'---------------------------------------------------------------------------'


Option Explicit

dim EnvList, WshShell, EnvType
dim Action, aType, VarName, VarData



'Check if nr of arguments is correct
if ((WScript.Arguments.Count <> 3) and (WScript.Arguments.Count <> 4)) then
    'If not, show usage
    WScript.Echo "Usage: " & WScript.ScriptName & " <action> <environment type> <env var name>"
    WScript.Echo "<action> can be one of the following:"
    WScript.Echo ""
    WScript.Echo "- list"
    WScript.Echo "- set"
    WScript.Echo ""
    WScript.Echo ""
    WScript.Echo "<environment type> can be one of the following:"
    WScript.Echo ""
    WScript.Echo "- System"
    WScript.Echo "- User"
    WScript.Echo "- Volatile"
    WScript.Echo "- Process"

    WScript.Quit 2
else

    Action = WScript.Arguments(0)
    aType = WScript.Arguments(1)
    VarName = WScript.Arguments(2)

    if WScript.Arguments.Count = 4 then
       VarData = WScript.Arguments(3)
    end if



    if Action = "list" then
       Set EnvList = WScript.CreateObject("WScript.Shell")
       Set EnvType = EnvList.Environment(aType)
       WScript.Echo VarName & " = " & EnvType(VarName)
    end if

    if Action = "set" then
       Set EnvList = WScript.CreateObject("WScript.Shell")
       Set EnvType = EnvList.Environment(aType)
       EnvType(VarName) = EnvList.ExpandEnvironmentStrings(VarData)

       WScript.Echo "Set " & VarName & " = " & EnvType(VarName)

    end if
end if