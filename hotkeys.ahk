#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Notrayicon ;Uncomment this if you don't want to see the Icon in the system tray
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

!a::edit %A_ScriptName%					; Open current script in editor
^!+a::run explorer.exe %A_ScriptDir%		; Open the current script's path

::]eml::<My Email Address>
:*:myext::<My work extension>
:*:mynum::<My work phone #>
:*:myfax::<My work fax>
:*:mycell::<My cell>
:*:mybridge::<My conference bridge info>

::sel*::SELECT * FROM

; Code Bracket section

:*:]snip::<snip>{Enter 4}</snip>{up 2}
:*:]code::<code>{Enter 4}</code>{up 2}
:*:]email::<email>{Enter 4}</email>{up 2}

; Same as above, pasting clipboard between tags

:*:]csnip::<snip>{Enter 2}^v{Enter 2}</snip>
:*:]ccode::<code>{Enter 2}^v{Enter 2}</code>
:*:]cemail::<email>{Enter 2}^v{Enter 2}</email>

; Date/Time

; Date only
; Ex: 9/1/2005
::]d::
   FormatTime, CurrentDate,, M/d/yyyy
   SendInput %CurrentDate%
return

; Date Only
; Ex: 1 September 2005
::]dd::
   FormatTime, CurrentDate,, d MMMM yyyy
   SendInput %CurrentDate%
return

; Date/Time
; Ex: 9/1/2005 3:53 PM
::]dt::
   FormatTime, CurrentDateTime,, M/d/yyyy h:mm:ss tt
   SendInput %CurrentDateTime%
return

; Time only (24-hr)
; Ex: 09:12
::]t::
   FormatTime, Time,, HH:mm
   sendinput %Time%
return

;******************************************************************************
;			Open Programs
;******************************************************************************

#Numpad0::Run C:\Users\Jim\AppData\Local\Mizage LLC\Divvy\Divvy.exe
return

#Numpad1::Run C:\Users\Jim\AppData\Local\hyper\Hyper.exe
return

#Numpad2::Run C:\Users\Jim\AppData\Local\Programs\Microsoft VS Code\Code.exe
return

#Numpad3::Run D:\Development
return

#Numpad4::Run C:\Users\Jim\AppData\Roaming\Spotify\Spotify.exe
return

#Numpad5::Run C:\Users\Jim\AppData\Local\Discord\Update.exe --processStart Discord.exe
return

#Numpad6::Run C:\Users\Jim\AppData\Local\slack\slack.exe
return



;******************************************************************************
;			Open Websites
;******************************************************************************

#!Numpad0::Run https://www.google.com/
return

#!Numpad1::Run https://todoist.com/app/project/2221435675
return

#!Numpad2::Run https://todoist.com/app/filter/2309516826
return

#!Numpad3::Run https://calendar.google.com/calendar/u/0/r?pli=1#main_7
return

#!Numpad4::Run https://github.com/jimmontour
return

#!Numpad5::Run https://mail.google.com/mail/u/0/#inbox
return

#!Numpad6::Run https://outlook.office365.com/mail/inbox
return

#!Numpad7::Run https://drive.google.com/drive/u/0/my-drive
return

#!Numpad8::Run https://docs.google.com/document/u/0/?action=newdoc
return

#!Numpad9::Run https://docs.google.com/spreadsheets/u/0/
return

;******************************************************************************
;			Audio Video Controls
;******************************************************************************


;******************************************************************************
;			Window Management
;******************************************************************************
