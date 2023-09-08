;**** WARNING - IF YOU ARE VIEWING THIS THROUGH THE mIRC EDITOR. ****
;**** I STRONGLY RECOMMEND YOU CLICK CANCEL TO AVOID CUTTING OFF ****
;**** THE END OF THIS SCRIPT AS THE mIRC EDITOR CAN ONLY HANDLE  ****
;**** 30 KB OF DATA.  THANKYOU (C}{$)                            ****

dialog syssetup {
  title "SystemInfo Setup by C}{$"
  size -1 -1 316 166
  option dbu
  tab "Formatting and Updates", 1, 1 3 313 146
  box "Headings:", 14, 3 48 154 34, tab 1
  box "Values:", 10, 3 18 154 27, tab 1
  text "Colour:", 7, 7 29 17 8, tab 1
  combo 6, 26 28 68 50, tab 1 sort vsbar drop
  check "Bold", 12, 96 28 22 10, tab 1
  check "Underline", 13, 118 28 34 10, tab 1
  text "Colour:", 9, 7 59 17 8, tab 1
  combo 8, 26 58 68 48, tab 1 sort vsbar drop
  check "Bold", 15, 96 58 22 10, tab 1
  check "Underline", 16, 118 58 33 10, tab 1
  check "Remove underlines from headers.", 132, 9 70 126 10, tab 1
  box "Deliberation:", 17, 3 84 154 64, tab 1
  text Enclose With:, 11, 6 94 34 7, tab 1
  text "Left:", 2, 40 94 11 8, tab 1
  edit "", 3, 52 93 25 10, tab 1 autohs
  text "Right:", 4, 111 94 15 8, tab 1
  edit "", 5, 127 93 24 10, tab 1 autohs
  text "Colour:", 62, 7 105 17 8, tab 1
  combo 61, 25 104 68 42, tab 1 sort vsbar drop
  check "Bold", 57, 96 104 22 10, tab 1
  check "Underline", 58, 119 104 33 10, tab 1
  text "Seperate Values and Headers Using:", 18, 7 125 88 8, tab 1 right
  edit "", 19, 96 124 50 10, tab 1 autohs
  text "Colour:", 43, 7 135 17 8, tab 1
  combo 42, 25 134 68 40, tab 1 sort vsbar drop
  check "Bold", 44, 96 135 22 10, tab 1
  check "Underline", 45, 119 135 33 10, tab 1
  box "Themes", 106, 159 18 154 50, tab 1
  text "Theme:", 63, 160 26 24 8, tab 1 right
  combo 87, 185 25 126 38, tab 1 vsbar drop
  button "Apply Theme", 83, 273 38 37 12, tab 1
  button "Save", 84, 163 53 30 12, tab 1
  button "Export", 85, 195 53 37 12, tab 1
  button "Import", 86, 234 53 37 12, tab 1
  button "Delete", 90, 273 53 37 12, tab 1
  text "All themes are exported to YOURMIRCDIRECTORY\Themes", 128, 163 69 146 8, tab 1
  box "Update Check", 140, 159 78 154 70, tab 1
  check "Enable automatic checking for updates", 141, 162 85 129 10, tab 1
  text "How often to check for updates:", 142, 162 96 87 8, tab 1
  radio "On connect", 143, 162 105 50 10, tab 1
  radio "Every day", 144, 162 115 50 10, tab 1
  radio "Every week", 145, 162 125 50 10, tab 1
  radio "Every month", 146, 162 135 50 10, tab 1
  button "Check for updates now", 147, 247 133 62 12, tab 1
  tab "Custom Lines", 35
  box "Custom Line", 20, 3 18 154 131, tab 35
  edit "", 21, 4 25 151 13, tab 35 autohs
  text "For this, the token you input will be replaced with the data.", 22, 6 40 149 8, tab 35
  text "Click here for more help. The tokens are: ", 23, 6 48 149 8, tab 35
  text "@os == Operating System", 24, 6 56 67 8, tab 35
  text "@up == Uptime", 25, 74 56 81 8, tab 35
  text "@cpu == CPU Info", 26, 6 64 67 8, tab 35
  text "@mem == Memory Info", 27, 74 64 81 8, tab 35
  text "@hd == Hard Disk Info", 28, 6 71 67 8, tab 35
  text "@ni == Network Interfaces", 29, 74 72 81 8, tab 35
  text "@res == Display Info", 30, 6 79 67 8, tab 35
  text "@temp == Temperature Info", 31, 74 80 81 8, tab 35
  text "@mon == Monitor", 32, 6 87 67 8, tab 35
  text "@snd == Sound card", 82, 74 88 81 8, tab 35
  text "@gfx == gfx card", 77, 6 94 67 8, tab 35
  text "@recup == Record Uptime", 134, 74 96 81 8, tab 35
  text "@OSInstallInfo == OS Install Info", 135, 5 114 150 8, tab 35 center
  text "You may use CTRL+K/B/U in this line, Type /cust to use.", 40, 5 122 150 8, tab 35 center
  box "Intelligent Custom Line (/icust)", 115, 159 18 153 131, tab 35
  text "Available items:", 112, 163 25 54 8, tab 35
  list 100, 163 33 54 103, tab 35 sort size
  check "Multiline", 139, 165 137 33 10, tab 35
  button "->", 101, 219 56 16 12, tab 35
  button "-->>", 102, 219 69 16 12, tab 35
  button "<-", 108, 219 82 16 12, tab 35
  button "<<--", 109, 219 95 16 12, tab 35
  text "(Parsed from top to bottom)", 114, 229 137 70 8, tab 35
  text "Current /icust:", 113, 237 25 57 8, tab 35
  list 98, 237 33 53 103, tab 35 size
  button "Up", 110, 291 68 18 12, tab 35
  button "Down", 111, 291 82 18 12, tab 35
  text "For more identifiers, click the Help button.", 33, 6 104 148 8, tab 35 center
  tab "Options", 80
  box "Other Options", 65, 3 18 154 52, tab 80
  text "Graphics Card:", 64, 7 26 42 8, tab 80 right
  edit "", 66, 51 25 101 10, tab 80 autohs
  text "Sound card:", 76, 7 36 42 8, tab 80 right
  edit "", 75, 51 35 101 10, tab 80 autohs
  text "Monitor:", 78, 7 46 42 8, tab 80 right
  edit "", 79, 51 45 101 10, tab 80 autohs
  button "Auto-Detect sound and graphics", 74, 69 56 84 12, tab 80
  box "Motherboard Monitor", 103, 3 72 154 76, tab 80
  text "Motherboard monitor is available from ", 71, 5 80 150 8, tab 80 center
  link "http://mbm.livewiredev.com", 72, 47 88 71 8, tab 80
  text "Try different integer's until your fan shows up in the output.", 73, 5 96 150 8, tab 80 center
  text "Temperatures in:", 136, 5 105 44 8, tab 80
  radio "Degrees Celcius", 137, 50 104 50 10, tab 80
  radio "Degrees Fahrenheit", 138, 50 113 68 10, tab 80
  check "Disable MBM outputs from all parts of the script.", 125, 5 134 150 10, tab 80
  box "Plugin Options", 105, 159 18 154 66, tab 80
  text "Current Plug-in's Detected:", 92, 160 27 68 8, tab 80
  list 91, 228 26 82 44, tab 80 size vsbar
  button "Load Plugin", 94, 228 70 37 12, tab 80
  button "Configure Plugin", 93, 266 70 43 12, tab 80
  box "Miscellaneous Options", 104, 159 85 154 63, tab 80
  check "Respond to CTCP VERSION with your /stats", 89, 162 91 137 10, tab 80
  check "Allow RemoteStats via /ctcp NICKNAME SystemInfo", 127, 162 100 147 10, tab 80
  check "Remove ALL formatting from output", 99, 162 109 97 10, tab 80
  text "Delay between lines on /info command:", 96, 162 119 96 8, tab 80 right
  edit "", 95, 259 118 11 10, tab 80
  text "Integer (1- 10)", 97, 271 119 40 8, tab 80
  check "Limit /space output to 5 drives", 126, 162 126 96 10, tab 80
  check "Use alternative method for retrieving uptime.", 129, 162 135 146 10, tab 80
  radio "Both", 68, 50 122 50 10, tab 80
  button "Change NIC", 69, 6 56 61 12, tab 80
  tab "About", 107
  text "This script was mostly generated by C}{$ (aka Jan Staunton).", 47, 7 23 155 8, tab 107 center
  text "If you wish to report bugs,", 48, 16 32 67 8, tab 107
  link "http://bugs.phucknut.net", 34, 84 32 68 8, tab 107
  text "Thanks also goes to the creators of moo.dll and Serial who ", 49, 9 41 152 8, tab 107 center
  text "inspires me so very often :o and of course, my testing team!", 50, 8 49 152 8, tab 107 center
  text "Links:", 51, 8 65 19 8, tab 107
  link "http://scripts.phucknut.net", 52, 8 73 84 8, tab 107
  text " - Website for other scripts.", 53, 93 73 68 8, tab 107
  link "irchs@btinternet.com", 54, 8 81 52 8, tab 107
  text " - My e-mail address", 55, 60 81 50 8, tab 107
  link "http://www.mircscripts.org/dstudio/", 56, 8 89 102 8, tab 107
  icon 130, 67 123 20 20,  $scriptdir $+ menkey.bmp, 0, tab 107 noborder
  button "wtfyourleet click me!", 131, 51 109 54 12, hide tab 107
  text "Script Version:", 67, 8 99 36 8, tab 107
  text "N/A", 81, 45 99 108 8, tab 107
  box "The creator of MBMinfo.dll", 36, 167 18 145 61, tab 107
  box "", 88, 3 18 162 129, tab 107
  link "http://www.planet-pmp.com/", 116, 200 27 77 8, tab 107
  text "Thanks goes out to anhi, the creator of mbminfo.dll who has made a huge contribution to the SystemInfo community :)", 117, 171 36 134 28, tab 107 center
  link "http://www.phucknut.net", 118, 207 121 66 8, tab 107
  text "E-Mail:", 119, 172 67 20 8, tab 107
  link "anhilator@fastrun.at", 120, 195 67 83 8, tab 107
  box "moo.dll", 121, 167 81 145 37, tab 107
  link "http://www.influenced.net/", 122, 203 89 70 8, tab 107
  text "Thanks to marky the creator of the legendary moo.dll :) He's a cool dood.", 123, 170 98 139 16, tab 107 center
  link "http://www.darkengine.net", 124, 206 132 69 8, tab 107
  button "OK + Save", 37, 20 153 30 12, default ok
  button "Default Settings", 38, 53 153 42 12
  button "Exit Without Save", 39, 98 153 47 12, cancel
  button "Help", 46, 148 153 28 12
  button "Preview your current settings", 59, 179 153 79 12
  text "(In a new window)", 60, 259 155 47 8
}

dialog systeminfo {
  title "SystemInfo by C}{$ Version 1.5!"
  size -1 -1 253 209
  option dbu
  box "General Information", 11, 2 1 249 79
  text "OS:", 1, 11 9 38 8, right
  edit "", 2, 50 8 199 10, read autohs
  text "Uptime:", 3, 30 19 19 8, right
  edit "", 4, 50 18 199 10, read autohs
  text "Record:", 8, 29 29 20 8, right
  edit "", 7, 50 28 199 10, read autohs
  text "CPU Info:", 5, 25 39 24 8, right
  edit "", 6, 50 38 199 10, read autohs
  text "Temperature:", 10, 16 49 33 8, right
  edit "", 9, 50 48 199 10, read autohs
  text "Memory Usage:", 40, 10 59 39 8, right
  edit "", 39, 50 58 199 10, read autohs
  text "Hard Disk Usage:", 43, 6 69 43 8, right
  text "Total:", 50, 51 69 15 8
  edit "", 42, 66 68 51 10, read autohs
  text "Free:", 51, 118 69 14 8
  edit "", 49, 132 68 51 10, read autohs
  text "N/A", 52, 184 69 64 8
  box "Peripherals", 12, 2 81 249 49
  text "Display:", 14, 20 89 29 8, right
  edit "", 13, 50 88 199 10, read autohs
  text "Monitor:", 18, 28 99 21 8, right
  edit "", 17, 50 98 199 10, read autohs
  text "Graphics Card:", 16, 13 109 36 8, right
  edit "", 15, 50 108 199 10, read autohs
  text "Sound Card:", 20, 18 119 31 8, right
  edit "", 19, 50 118 199 10, read autohs
  box "Internet/Network Interfaces", 41, 2 132 249 30
  text "Network:", 25, 25 141 23 8, right
  edit "", 24, 50 140 199 10, read autohs
  text "Connection:", 23, 18 151 30 8, right
  edit "", 22, 50 150 199 10, read autohs
  box "Script", 26, 2 164 182 21
  text "Script Version:", 27, 4 173 36 8
  edit "", 28, 41 172 50 10, read autohs
  text "moo.dll Version:", 29, 92 173 39 8
  edit "", 30, 132 172 50 10, read autohs
  text "Refresh Rate:", 31, 185 166 35 8
  edit "", 32, 221 165 13 10, autohs limit 2
  button "Set", 35, 235 165 16 10
  text "(Seconds between 1-60)", 33, 186 176 65 8, center
  button "OK", 34, 2 186 124 12, ok cancel
  button "Refresh", 36, 127 186 124 12
  text "Status:", 45, 2 200 19 8
  text "Initialising...", 46, 22 200 158 8
  text "Next Refresh:", 47, 181 200 45 8, right
  text "N/A", 48, 227 200 22 8
}

dialog SIUpdateCheck {
  title "SystemInfo Update Check"
  size -1 -1 169 75
  option dbu
  button "E&xit", 2, 131 63 37 12, ok cancel
  button "&Check", 3, 92 63 37 12
  text "Status:", 4, 2 64 20 8
  text "N/A", 5, 23 64 67 8
  text "Update URL:", 6, 3 52 33 8, hide right
  link "N/A", 7, 38 52 128 8, hide
  box "Update Information", 8, 1 3 167 59
  text "Checking for updates...", 9, 4 11 161 36
  text "New version available:", 10, 7 20 55 8, hide right
  text "N/A", 11, 63 20 88 8, hide
  text "Date available since:", 12, 6 28 56 8, hide right
  text "N/A", 13, 63 28 89 8, hide
  text "N/A", 14, 63 12 89 8, hide
  text "Your version:", 15, 6 12 56 8, hide right
  button "Click here to view the changes in the new version", 16, 36 37 129 12, hide
}

dialog SIupdatefound {
  title "SystemInfo update found!"
  size -1 -1 159 45
  option dbu
  text "An update for SystemInfo was found, do you wish to see more information about this update?", 1, 2 3 155 15
  button "&Yes", 2, 19 20 37 12, ok
  check "&Keep checking for updates", 3, 2 34 105 10
  button "&No", 4, 59 20 37 12, cancel
  button "&Configure", 5, 99 20 37 12
}

dialog SIAgentControl {
  title "SystemInfo by C}{$ Agent!"
  size -1 -1 117 55
  option dbu
  button "Talk!", 1, 0 25 117 17, default
  button "Quit", 2, 88 43 29 12, ok cancel
  text "SystemInfo by C}{$ agent wants to say!", 4, 2 5 113 8
  edit , 5, 1 14 115 10, autohs
}

dialog unloadalert {
  title "Alert!"
  size -1 -1 118 45
  option dbu
  text "Are you sure you want unload SystemInfo by", 1, 0 2 117 8
  text "C}{$ Version 1.5?! Doing this will lose all", 2, 0 10 117 8
  text "your settings.  Do you wish to continue?!", 3, 0 18 117 8
  button "Yes!", 4, 19 30 37 12, ok
  button "No!", 5, 59 30 37 12, cancel
}

on *:dialog:unloadalert:init:*:{
  did -f unloadalert 5
}

on *:DIALOG:SIupdatefound:INIT:*:{
  did -c SIupdatefound 3
}

on *:dialog:unloadalert:sclick:4:{
  unload -rs " $+ $script $+ "
}

on *:UNLOAD:{
  echo -a 4*** SystemInfo by C}{$ %sys.version is now unloaded and all variables have been cleared.
  unset %sys.* 
  timeruptime off
}

on *:DIALOG:SIupdatefound:sclick:4:{
  if ( $did(3).state >= 1 ) {
    set %sys.EnableAutoUpdateCheck 1
  }
  else {
    set %sys.EnableAutoUpdateCheck 0
  }
}

on *:DIALOG:SIupdatefound:sclick:2:{
  if ( $did(3).state >= 1 ) {
    set %sys.EnableAutoUpdateCheck 1
  }
  else {
    set %sys.EnableAutoUpdateCheck 0
  }
  siupdatecheck
}

on *:DIALOG:SIupdatefound:sclick:5:{
  if ( $did(3).state >= 1 ) {
    set %sys.EnableAutoUpdateCheck 1
  }
  else {
    set %sys.EnableAutoUpdateCheck 0
  }
  syssetup
  timer 1 0.25 did -c syssetup 88
}

on *:DIALOG:SIUpdateCheck:sclick:16:{
  run $shortfn($scriptdir $+ SIUpdateChanges.txt)
}
on *:DIALOG:SIUpdateCheck:sclick:3:{

  did -h SIUpdateCheck 11
  did -h SIUpdateCheck 14
  did -h SIUpdateCheck 13
  did -h SIUpdateCheck 11
  did -h SIUpdateCheck 12
  did -h SIUpdateCheck 10
  did -h SIUpdateCheck 15
  did -h SIUpdateCheck 6
  did -h SIUpdateCheck 7
  did -h SIUpdateCheck 16
  did -v SIUpdateCheck 9

  set %sys.UpdateWithDialog 1
  did -r SIUpdateCheck 5
  did -a SIUpdateCheck 5 Connecting to server...
  sockclose SIUpdate
  sockopen SIUpdate www.phucknut.net 80
  .remove $shortfn($scriptdir $+ SIUpdateChanges.txt)
}
on *:DIALOG:SIUpdateCheck:sclick:7:{
  if ( %sys.UpdateURL != $null ) {
    run %sys.UpdateURL
  }
}

alias SIUpdateCheck {
  set %sys.LastUpdateChecked $asctime(dd/mm/yy hh:nn:ss)
  if ( $1 == withoutdialog ) {
    set %sys.UpdateWithDialog 0
    sockclose SIUpdate
    sockopen SIUpdate www.phucknut.net 80
  }
  else {
    set %sys.UpdateWithDialog 1
    if ( $dialog(SIUpdateCheck) != SIUpdateCheck ) {
      dialog -m SIUpdateCheck SIUpdateCheck
    }
  }
}

on *:DIALOG:SIUpdateCheck:INIT:*:{
  did -r SIUpdateCheck 5
  did -a SIUpdateCheck 5 Connecting to server...
  sockclose SIUpdate
  sockopen SIUpdate www.phucknut.net 80
  .remove $shortfn($scriptdir $+ SIUpdateChanges.txt)
}

on *:sockopen:SIUpdate:{

  if ( %sys.UpdateWithDialog == 1 ) {
    did -r SIUpdateCheck 5
    did -a SIUpdateCheck 5 Connecting to server...
    did -b SIUpdateCheck 3
    did -r SIUpdateCheck 5
    did -a SIUpdateCheck 5 Sending request...
  }
  if ( $sock(SIUpdate).wsmsg != [0] Unknown Error ) {
    did -r SIUpdateCheck 5
    did -a SIUpdateCheck 5 $sock(SIUpdate).wsmsg
    did -e SIUpdateCheck 3
    sockclose SIUpdate
  }
  else {
    sockwrite -n SIUpdate GET /scripts/update.php?script=si&currver= $+ %sys.SimpleVersion HTTP/1.1
    sockwrite -n SIUpdate Host: www.phucknut.net
    sockwrite -n SIUpdate
    set %sys.OneVersionChecked 0
    unset %sys.UpdateURL
  }
}

on *:sockread:SIUpdate:{
  sockread %sys.buffer
  %sys.buffer = $mid(%sys.buffer,1,930)
  tokenize 32 %sys.buffer

  if ( <END FILE> isin %sys.buffer ) {
    if ( %sys.UpdateWithDialog == 1 ) {
      did -r SIUpdateCheck 5
      did -a SIUpdateCheck 5 Check complete.
      did -e SIUpdateCheck 3
    }
  }


  if ( NEW VERSION isin %sys.buffer ) {
    if ( %sys.UpdateWithDialog == 0 ) {
      if ( $dialog(SIupdatefound) != SIupdatefound ) {
        dialog -m SIupdatefound SIupdatefound
      }
      goto veryend
    }

    if ( %sys.UpdateWithDialog == 1 ) {
      did -r SIUpdateCheck 5
      did -a SIUpdateCheck 5 Receiving data...
      did -v SIUpdateCheck 11
      did -v SIUpdateCheck 14
      did -v SIUpdateCheck 13
      did -v SIUpdateCheck 11
      did -v SIUpdateCheck 12
      did -v SIUpdateCheck 10
      did -v SIUpdateCheck 15
      did -v SIUpdateCheck 6
      did -v SIUpdateCheck 7
      did -v SIUpdateCheck 16
      did -h SIUpdateCheck 9
      if ( %sys.OneVersionChecked == 0 ) {

        set %sys.OneVersionChecked 1
        did -r SIUpdateCheck 14
        did -a SIUpdateCheck 14 %sys.SimpleVersion
        did -r SIUpdateCheck 11
        did -a SIUpdateCheck 11 $remove(%sys.buffer,NEW VERSION $+ $chr(32))
      }
    }
    write " $+ $shortfn($scriptdir $+ SIUpdateChanges.txt) $+ " *******************************************************************************
    write " $+ $shortfn($scriptdir $+ SIUpdateChanges.txt) $+ " *********** CHANGES IN $remove(%sys.buffer,NEW VERSION $+ $chr(32)) ***********
    write " $+ $shortfn($scriptdir $+ SIUpdateChanges.txt) $+ " *******************************************************************************
    unset %sys.buffer
  }

  if ( URL isin %sys.buffer ) {
    if ((%sys.UpdateURL == $null) && (%sys.UpdateWithDialog == 1)) {
      set %sys.UpdateURL $remove(%sys.buffer,URL $+ $chr(32))
      did -a SIUpdateCheck 7 %sys.UpdateURL
    }
  }

  if ( CHANGES isin %sys.buffer ) {
    if ( %sys.UpdateWithDialog == 1 ) {
      did -r SIUpdateCheck 5
      did -a SIUpdateCheck 5 Receiving data...
      write " $+ $shortfn($scriptdir $+ SIUpdateChanges.txt) $+ " $remove(%sys.buffer,CHANGES $+ $chr(32))

    }

    unset %sys.buffer
  }


  if ( DATE SINCE isin %sys.buffer ) {
    if ( %sys.UpdateWithDialog == 1 ) {
      did -r SIUpdateCheck 5
      did -a SIUpdateCheck 5 Receiving data...
      did -r SIUpdateCheck 13
      did -a SIUpdateCheck 13 $remove(%sys.buffer,DATE SINCE $+ $chr(32))
      unset %sys.buffer
    }
  }

  if ( NO UPDATE isin %sys.buffer ) {
    sockclose SIUpdate
    if ( %sys.UpdateWithDialog == 1 ) {
      did -r SIUpdateCheck 5
      did -a SIUpdateCheck 5 Receiving data...
      did -r SIUpdateCheck 9
      did -a SIUpdateCheck 9 You have the most current version of SystemInfo by C}{$
      did -r SIUpdateCheck 5
      did -a SIUpdateCheck 5 No Update.
      did -e SIUpdateCheck 3
    }
    unset %sys.buffer
  }

  :veryend
}

alias systeminfo {
  dialog -m systeminfo systeminfo
}

on 1:dialog:systeminfo:init:*:{
  set %sys.SystemInfoegg 0

  did -r SystemInfo 2
  did -a SystemInfo 2 $si(os)

  did -r SystemInfo 17
  did -a SystemInfo 17 %sys.monitor

  did -r SystemInfo 15
  did -a SystemInfo 15 %sys.gfxcard

  did -r SystemInfo 19
  did -a SystemInfo 19 %sys.soundcard

  did -r SystemInfo 28
  did -a SystemInfo 28 %sys.version

  did -r SystemInfo 30
  did -a SystemInfo 30 $dll($scriptdirmoo.dll,version,_)

  did -r SystemInfo 32
  did -a SystemInfo 32 %sys.SystemInfoRefreshRate

  RefreshSystemInfoDialog


}

on 1:dialog:siagentcontrol:init:*:{

  set %sys.SIAgentSays SystemInfo by CHS %sys.version rules!

  if ( $asctime(dd/mm) == 17/06 ) {
    set %sys.SIAgentSays Today is CHS's birthday!  Happy birthday CHS!
    goto continue
  }

  if ( $asctime(dd/mm) == 15/06 ) {
    set %sys.SIAgentSays Today is xaber's birthday!  He bribed me with a suck to do this, so happy birfday to him! :)
    goto continue
  }

  if ( $asctime(dd/mm) == 05/02 ) {
    set %sys.SIAgentSays Today is AdamTasker's birthday!  Happy birthday mr taskeh!
    goto continue
  }

  if ( $asctime(dd/mm) == 04/04 ) {
    set %sys.SIAgentSays Today is Fuzzyste's birthday!  Happy birthday Fuzzyste!
    goto continue
  }

  if ( $asctime(dd/mm) == 25/12 ) {
    set %sys.SIAgentSays Merry christmas!
    goto continue
  }

  if ( $asctime(dd/mm) == 01/01 ) {
    set %sys.SIAgentSays Happy new year!
    goto continue
  }

  if ( $rand(1,10) == 5 ) {
    set %sys.SIAgentSays And the riot be the rhyme of the unheard.
    goto continue
  }

  if ( $rand(1,10) == 8 ) {
    set %sys.SIAgentSays Just a quiet peaceful dance, for the things we'll never have.
    goto continue
  }

  if ( $rand(1,10) == 2 ) {
    set %sys.SIAgentSays Anarchy is not chaos, but order without control.
    goto continue
  }

  if ( $rand(1,10) == 3 ) {
    set %sys.SIAgentSays You'll never silence the voice of the voiceless!
    goto continue
  }

  if ( $rand(1,10) == 4 ) {
    set %sys.SIAgentSays Linux, one Windows desktop at a time!
    goto continue
  }

  if ( $rand(1,10) == 6 ) {
    set %sys.SIAgentSays Pardon me whilst I burst into flames!
    goto continue
  }

  if ( $rand(1,10) == 7 ) {
    set %sys.SIAgentSays You cannot undermine police authority and then complain about rising crime.
    goto continue
  }

  if ( $rand(1,10) == 9 ) {
    set %sys.SIAgentSays Two great European narcotics, alcohol and Christianity.
    goto continue
  }

  if ( $rand(1,10) == 10 ) {
    set %sys.SIAgentSays "All these quotes aren't mine, don't sue me" - CHS
    goto continue
  }


  if ( $rand(1,10) == 4 ) {
    set %sys.SIAgentSays Deprive man of his life lie and you rob him of his happiness.
    goto continue
  }

  if ( $rand(1,10) == 3 ) {
    set %sys.SIAgentSays Honest officer, the dwarf was on fire when I got here.
    goto continue
  }

  if ( $rand(1,10) == 3 ) {
    set %sys.SIAgentSays Who wears short shorts? We wear short shorts! He likes short shorts! I like short shorts!
    goto continue
  }


  :continue

  did -a siagentcontrol 5 %sys.SIAgentSays
  .gload SIAgent
  .gtalk SIAgent %sys.SIAgentSays



}


on 1:dialog:siagentcontrol:sclick:1:{

  set %sys.SIAgentSays $did(5).text

  if ( %sys.SIAgentSays != $null ) {
    .gtalk SIAgent %sys.SIAgentSays
  }

}


on 1:dialog:syssetup:sclick:131:{

  dialog -m siagentcontrol siagentcontrol

}



on 1:dialog:syssetup:*:130:{

  if (($devent == uclick) || ($devent == mouse) || ($devent == dclick)) {
    goto veryend
  }
  elseif (($devent == sclick) && (%sys.SIAgent == $null)) {
    set %sys.SIAgent 1
  }
  elseif (($devent == sclick) && (%sys.SIAgent == 1)) {
    set %sys.SIAgent %sys.SIAgent 1
  }
  elseif (($devent == rclick) && (%sys.SIAgent == 1 1)) {
    set %sys.SIAgent %sys.SIAgent 2
  }
  elseif (($devent == rclick) && (%sys.SIAgent == 1 1 2)) {
    set %sys.SIAgent %sys.SIAgent 2
  }
  elseif (($devent == sclick) && (%sys.SIAgent == 1 1 2 2)) {
    set %sys.SIAgent %sys.SIAgent 1
  }
  elseif (($devent == rclick) && (%sys.SIAgent == 1 1 2 2 1)) {
    did -v syssetup 131
    unset %sys.siagent
  }
  else {
    unset %sys.SIAgent
  }

  :veryend
}

on 1:dialog:systeminfo:sclick:35:{

  set %sys.buffer $did(32).text

  if ((%sys.buffer > 0) && (%sys.buffer < 61)) {

    set %sys.SystemInfoRefreshRate %sys.buffer
    did -r systeminfo 46
    did -a systeminfo 46 Refresh rate set
  }
  else {
    did -r systeminfo 32
    did -a systeminfo 32 %sys.SystemInfoRefreshRate
  }

}

on 1:dialog:systeminfo:sclick:34:{
  .timerRefreshSystemInfo off
  if ((%sys.buffer > 0) && (%sys.buffer < 61)) {

    set %sys.SystemInfoRefreshRate %sys.buffer
  }

}

on 1:dialog:systeminfo:sclick:36:{

  RefreshSystemInfoDialog

}

;****** ON CONNECT/START/blabla EVENTS *****

on *:CONNECT:{
  SetupImportantStuff
  if ( %sys.EnableAutoUpdateCheck == 1 ) {
    if ( %sys.AutoCheckInterval == connect ) {
      siupdatecheck withoutdialog
    }
  }
}

on *:START:{
  if ( %sys.FirstLoad == $null ) {
    ;/syssetup

  }
  .timeruptime -o 0 60 /updateuptime
  SetupImportantStuff
  GetWindowsDirectory
  if ( %sys.HelpViewed != 1 ) {
    set %sys.HelpViewed 1
  }
}

;****** END ON CONNECT/START/blabla EVENTS *****

;****** Small Widely Used Aliases Section ******

alias syssetup {
  dialog -m syssetup syssetup
}

alias setupcolours {

  if ( %sys.headCol >= 10 ) {
    set %sys.HeadColourVar %sys.headCol
  }
  else {
    set %sys.HeadColourVar 0 $+ %sys.headCol
  }


  if ( %sys.headU == 1 ) {
    set %sys.UnderLineHeader 
  }
  else {
    unset %sys.UnderLineHeader
  }

  if ( %sys.headBold == 1 ) {
    set %sys.BoldHeader 
  }
  else {
    unset %sys.BoldHeader
  }

  if ( %sys.valCol >= 10 ) {
    set %sys.ValueColourVar %sys.valCol
  }
  else {
    set %sys.ValueColourVar 0 $+ %sys.valCol
  }

  if ( %sys.valU == 1 ) {
    set %sys.UnderLineValue 
  }
  else {
    unset %sys.UnderLineValue
  }

  if ( %sys.valBold == 1 ) {
    set %sys.BoldValue 
  }
  else {
    unset %sys.BoldValue
  }

  if ( %sys.encCol >= 10 ) {
    set %sys.encColourVar %sys.encCol
  }
  else {
    set %sys.encColourVar 0 $+ %sys.encCol
  }


  if ( %sys.encBold == 1 ) {
    set %sys.Boldenc 
  }
  else {
    unset %sys.Boldenc
  }

  if ( %sys.encU == 1 ) {
    set %sys.Underlineenc 
  }
  else {
    unset %sys.Underlineenc
  }

  if ( %sys.sepBold == 1 ) {
    set %sys.Boldsep 
  }
  else {
    unset %sys.Boldsep
  }

  if ( %sys.sepU == 1 ) {
    set %sys.Underlinesep 
  }
  else {
    unset %sys.Underlinesep
  }

  if ( %sys.sepCol >= 10 ) {
    set %sys.sepColourvar %sys.sepCol
  }
  else {
    set %sys.sepColourvar 0 $+ %sys.sepCol
  }

  set %sys.delib %sys.Boldsep $+ %sys.Underlinesep $+  $+ %sys.sepColourvar $+ %sys.sepWith $+ %sys.Boldsep $+  $+ %sys.Underlinesep 

  set %sys.buffer $si(conn)
  if ((%sys.buffer == -1) || (%sys.buffer == none detected)) {
    set %sys.ConnectionBuffer No active connection detected
  }
  else {
    set %sys.ConnectionBuffer $si(conn)
  }

  if ( %sys.sepCol == 99 ) {
    set %sys.sepColourvar 
  }

  if ( %sys.encCol == 99 ) {
    set %sys.encColourVar 
  }

  if ( %sys.headCol == 99 ) {
    set %sys.HeadColourVar 
  }

  if ( %sys.valCol == 99 ) {
    set %sys.ValueColourVar 
  }


}

alias -l BuildPluginsMenu {

  did -r syssetup 91

  ; <<<<< BEGIN PLUGINS SETUP >>>>>

  set %sys.ini.number 0
  set %sys.dialogbuffer 0
  :beginplugloop
  /inc %sys.ini.number 1
  set %sys.ini.topictoscan $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.ini.number)

  if ( %sys.ini.topictoscan == uptime ) { goto beginplugloop }
  if ( %sys.ini.topictoscan == $null ) { goto contafterplugins }

  /inc %sys.dialogbuffer 1
  set %sys.buffer $readini $shortfn($mircdir $+ SystemInfo.ini) %sys.ini.topictoscan name

  did -i syssetup 91 %sys.dialogbuffer %sys.buffer

  goto beginplugloop

  :contafterplugins

  ; <<<<< END PLUGINS SETUP >>>>>

}

alias -l buildThemesMenu {


  did -r syssetup 87

  ; <<<<< BEGIN THEMES SETUP >>>>>

  set %sys.ini.number 0
  :beginloop
  /inc %sys.ini.number 1
  set %sys.ini.topictoscan $ini($shortfn($mircdir $+ systhemes.ini),%sys.ini.number)
  if ( %sys.ini.topictoscan == $null ) {

    goto veryend

  }

  else {

    set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini.topictoscan name
    did -i syssetup 87 %sys.ini.number %sys.buffer
    goto beginloop

  }
  ; <<<<< END THEMES SETUP >>>>>


  :veryend
  did -c syssetup 87 %sys.currenttheme
}

alias -l RefreshTimer {

  if ( $dialog(systeminfo) != $null ) {
    set %sys.counter $calc(%sys.counter - 1)
    did -r systeminfo 48
    did -a systeminfo 48 %sys.counter secs
  }
  else {
    .timerRefreshTimerThing off
    unset %sys.counter
  }


}

alias -l RefreshSystemInfoDialog {
  setupcolours

  if ( $dialog(systeminfo) == $null ) {
    goto veryend
  }

  did -r systeminfo 46
  did -a systeminfo 46 Refreshing...

  did -r SystemInfo 4
  DoUptimeStuff
  did -a SystemInfo 4 %sys.UptimeOutput

  did -r SystemInfo 7
  did -a SystemInfo 7 %sys.RecordUptime

  did -r SystemInfo 6
  did -a SystemInfo 6 $si(CPU)

  did -r SystemInfo 13
  did -a SystemInfo 13 $dll($scriptdirmoo.dll,screeninfo,_)

  did -r SystemInfo 22
  did -a SystemInfo 22 %sys.ConnectionBuffer


  did -r SystemInfo 24
  did -a SystemInfo 24 $si(NI)

  did -r SystemInfo 39
  did -a SystemInfo 39 $dll($scriptdirmoo.dll,meminfo,_)

  calcspace

  did -r systeminfo 42
  did -a systeminfo 42 %sys.total.size $+ %sys.byteunit

  did -r systeminfo 49
  did -a systeminfo 49 %sys.total.free $+ %sys.byteunit

  did -r systeminfo 52
  did -a systeminfo 52 $round($calc(($calc(%sys.total.size - %sys.total.free) / %sys.total.size) * 100 ),2) $+ % of total used.


  getmbm5info
  did -r SystemInfo 9
  did -a SystemInfo 9 $result

  .timerRefreshSystemInfo 1 %sys.SystemInfoRefreshRate RefreshSystemInfoDialog
  set %sys.counter %sys.SystemInfoRefreshRate
  .timerRefreshTimerThing %sys.counter 1 RefreshTimer

  did -r systeminfo 46
  did -a systeminfo 46 Refresh Complete

  :veryend
}

alias -l DoUptimeStuff {
  SetupImportantStuff
  if ( %sys.EnableAutoUpdateCheck == 1 ) {


    if ( %sys.LastUpdateChecked == $null ) {
      siupdatecheck withoutdialog
    }


    if ( %sys.AutoCheckInterval == day ) {
      if ( $calc($ctime - $ctime(%sys.LastUpdateChecked)) > 86400 ) {
        siupdatecheck withoutdialog
      }
    }


    if ( %sys.AutoCheckInterval == week ) {
      if ( $calc($ctime - $ctime(%sys.LastUpdateChecked)) > 604800 ) {
        siupdatecheck withoutdialog
      }
    }


    if ( %sys.AutoCheckInterval == month ) {
      if ( $calc($ctime - $ctime(%sys.LastUpdateChecked)) > 2419200 ) {
        siupdatecheck withoutdialog
      }
    }


  }
  set %sys.LatestUptime $calc($ticks / 1000 - 1))
  set %sys.LastUptime $readini $shortfn($mircdir $+ SystemInfo.ini) uptime uptime
  if ( %sys.LastUptime == $null ) {
    set %sys.LastUptime 0
  }
  if ( %sys.LatestUptime > %sys.LastUptime ) {
    writeini " $+ $shortfn($mircdir $+ SystemInfo.ini) $+ " uptime uptime %sys.LatestUptime
    writeini " $+ $shortfn($mircdir $+ SystemInfo.ini) $+ " uptime date $asctime(dd/mm/yy)
    writeini " $+ $shortfn($mircdir $+ SystemInfo.ini) $+ " uptime os $os
  }
  set %sys.RecordUptime $readini $shortfn($mircdir $+ SystemInfo.ini) uptime uptime
  set %sys.RecordUptime $de(recorduptime)
  set %sys.UpTimeDate $readini $shortfn($mircdir $+ SystemInfo.ini) uptime date
  set %sys.UptimeOS $readini $shortfn($mircdir $+ SystemInfo.ini) uptime os

  if ( %sys.AltUptime == 1 ) {
    set %sys.UptimeOutput $duration($calc(( $ticks / 1000 ) -1))
  }
  else {
    set %sys.UptimeOutput $de(uptime)
  }

}

alias -l GetWindowsDirectory {
  if (( 5. isin $si(os) ) || ( NT isin $si(os) )) {
    set %sys.WindowsDirectory $dll($scriptdirregistry.dll,GetKeyValue, [ 1 ] HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\\SystemRoot)
  }
  else {
    set %sys.WindowsDirectory $dll($scriptdirfsmem.dll,GetWinDir,_)
  }
}

alias OSInstalledOn {

  if ( 2003 isin $si(OS) ) {
    set %sys.os 2003
  }
  elseif ( Longhorn isin $si(OS) ) {
    set %sys.os LH
  }
  else {
    set %sys.os $os
  }

  unset %sys.output
  if ( %sys.WindowsDirectory == $null ) {
    GetWindowsDirectory
  }

  if (( 5. isin $si(os) ) || ( NT isin $si(os) )) {
    return %sys.os was installed $duration($calc($ctime - $dll($scriptdirregistry.dll,GetKeyValue, [ 1 ] HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\\InstallDate))) ago
  }

  else {
    set %sys.Buffer $shortfn(%sys.WindowsDirectory $+ \system\ver.dll)

    if ( $file(%sys.Buffer).ctime == -1 ) {
      set %sys.Buffer $shortfn(%sys.WindowsDirectory $+ \system\ACPI.sys)
      if ( $exists(%sys.Buffer) == $true ) {
        return %sys.os was installed $duration($calc($ctime - $file(%sys.Buffer).ctime)) ago
        goto veryend
      }
    }
    else {
      return %sys.os was installed $duration($calc($ctime - $file(%sys.Buffer).ctime)) ago
      goto veryend
    }
  }



  return Unretrievable

  :veryend
}

;DarkEngine stuff
alias -l de {
  return $dll($scriptdirdarkenginepro.dll,$1,_)
}
;end DE stuff

alias -l FilterCache {
  unset %sys.buffer2
  set %sys.buffer $eval($de(cpuL1cache) $+ . $+ $de(cpuL2cache))
  set %sys.count 0
  while ( %sys.count < 2 ) {
    inc %sys.count 1
    if ( $gettok($gettok(%sys.buffer,%sys.count,46),1,32) > 0 ) {
      set %sys.buffer2 %sys.buffer2 L $+ %sys.count $+ : $gettok($gettok(%sys.buffer,%sys.count,46),1,32) $+ KB
    }
  }
  return %sys.buffer2
}

alias SIItemOutput {
  return %sys.Underlineenc $+  $+ %sys.encColourVar $+ %sys.Boldenc $+ %sys.encLeftvar $+ %sys.Underlineenc $+ %sys.Boldenc $+  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $1- $+ %sys.UnderLineValue $+  $+ %sys.BoldValue $+ %sys.Underlineenc $+ %sys.Boldenc $+  $+ %sys.encColourVar $+ %sys.encRightvar $+ %sys.Underlineenc $+ %sys.Boldenc
}

alias SIHeader {
  return %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ $left($1-, 1) $+ %sys.UnderLineInHeadings $+ $right($1-, $calc($len($1-) -1)) $+ %sys.UnderLineHeader $+ %sys.BoldHeader $+ :
}

alias SIDelib {
  return %sys.Boldsep $+ %sys.Underlinesep $+  $+ %sys.sepColourvar $+ %sys.sepWith $+ %sys.Boldsep $+  $+ %sys.Underlinesep
}

alias si {
  if ( $1 == OS ) {
    if ( Home isin $dll($scriptdirmoo.dll,osinfo,_) ) {
      return $dll($scriptdirmoo.dll,osinfo,_)
    }
    else {
      return $de(os)
    }
  }
  if ( $1 == CPU ) {
    unset %sys.buffer
    if ( $de(cpucount) > 1 ) {
      set %sys.buffer 's
    }
    return $de(cpucount) CPU $+ %sys.buffer - $de(cpuinfo) $+ , $de(cpuspeed) $+ , $FilterCache ( $+ $de(cpuload) Load)
  }
  if ( $1 == NI ) {
    return $dll($scriptdirmoo.dll,interfaceinfo,_)
  }
  if ( $1 == CONN ) {
    return $de(conn)
  }

  if ( $1 == BWD ) {

    set %sys.count 0
    set %sys.dccget 0

    if ( $send(0) == 0 ) {
      set %sys.dccget 0
    }
    else {
      while ( %sys.count < $get(0) ) {
        inc %sys.count 1
        if ( $get(%sys.count).status == active ) {
          set %sys.dccget $calc( %sys.dccget + $get(%sys.count).cps )
        }
      }
    }
    set %sys.dccget $round($calc( %sys.dccget / 1024 ),2)


    return $calc( $de(banddown) + %sys.dccget )
  }


  if ( $1 == BWU ) {

    set %sys.count 0
    set %sys.dccsend 0

    if ( $send(0) == 0 ) {
      set %sys.dccsend 0
    }
    else {
      while ( %sys.count < $send(0) ) {
        inc %sys.count 1
        if ( $send(%sys.count).status == active ) {
          set %sys.dccsend $calc( %sys.dccsend + $send(%sys.count).cps )
        }
      }
    }
    set %sys.dccsend $round($calc( %sys.dccsend / 1024 ),2)
    return $calc( $de(bandup) + %sys.dccsend )
  }


  if ( $1 == CLUSTERSIZE ) {
    return $calc($dll($scriptdirfsmem.dll,GetSpaceInfo,total $2 $+ :\) / $dll($scriptdirfsmem.dll,GetClusterInfo,total $2 $+ :\)) bytes
  }
}

alias SetupImportantStuff {
  set %sys.version Version 1.5-r4
  set %sys.simpleversion 1.54
  set %sys.ScriptDir $scriptdir
}

alias OutputInfo {
  if (( %sys.removeALLformatting == 1 ) || (c isincs $gettok($chan($chan).mode,1,32))) {
    say $strip($1-,burc)
  }
  else {
    say $1-
  }
}


;****** End of Small Widely Used Aliases Section ******


on *:dialog:syssetup:init:*:{
  SetupImportantStuff

  if ( %sys.SystemInfoRefreshRate == $null ) {
    set %sys.SystemInfoRefreshRate 10
  }

  if ( %sys.EnableAutoUpdateCheck == $null ) {
    set %sys.EnableAutoUpdateCheck 1
  }

  if ( %sys.AutoCheckInterval == $null ) {
    set %sys.AutoCheckInterval week
  }

  if ( %sys.TemperatureUnit == $null ) {
    set %sys.TemperatureUnit C
  }

  if ( %sys.ICustMultiLine == $null ) {
    set %sys.ICustMultiLine 240
  }

  if ( %sys.UnderLineInHeadings == $null ) {
    set %sys.UnderLineInHeadings 
  }

  if ( %sys.TurnOffMBM == $null ) {
    set %sys.TurnOffMBM 1
  }

  if ( %sys.RemoteStats == $null ) {
    set %sys.RemoteStats 1
  }

  if ( %sys.respondCTCP == $null ) {
    set %sys.respondCTCP 1
  }

  if ( %sys.RemoteStats == $null ) {
    set %sys.RemoteStats 1
  }

  if ( %sys.encU == $null ) {
    set %sys.encU 0
  }

  if ( %sys.encBold == $null ) {
    set %sys.encBold 0
  }    

  if ( %sys.encCol == $null ) {
    set %sys.encCol 4
  }    

  if ( %sys.valCol == $null ) {
    set %sys.valCol 99
  }

  if ( %sys.valU == $null ) {
    set %sys.valU 0
  }

  if ( %sys.valBold == $null ) {
    set %sys.valBold 0
  }

  if ( %sys.headCol == $null ) {
    set %sys.headCol 14
  }

  if ( %sys.headU == $null ) {
    set %sys.headU 0
  }

  if ( %sys.headBold == $null ) {
    set %sys.headBold 1
  }

  if ( %sys.sepCol == $null ) {
    set %sys.sepCol 15
  }

  if ( %sys.sepBold == $null ) {
    set %sys.sepBold 1
  }

  if ( %sys.sepU == $null ) {
    set %sys.sepU 0
  }

  if ( %sys.removeALLformatting == $null ) {
    set %sys.removeALLformatting 0
  }

  if ( %sys.infodelay == $null ) {
    set %sys.infodelay 0
  }

  if ( %sys.LimitSpace == $null ) {
    set %sys.LimitSpace 0
  }

  if ( %sys.TurnOffMBM == $null ) {
    set %sys.TurnOffMBM 1
  }

  if ( %sys.gfxcard == $null ) {
    set %sys.gfxcard $de(videocard)
  }

  if ( %sys.soundcard == $null ) {
    set %sys.soundcard $de(soundcard)
  }


  if ( %sys.monitor == $null ) {
    set %sys.monitor $de(monitor)
  }

  if ( %sys.FirstLoad != 1 ) {

    if ( %sys.sepWith == $null ) {
      set %sys.sepWith ¤
    }
    if ( %sys.encLeftvar == $null ) {
      set %sys.encLeftvar (
    }

    if ( %sys.encRightvar == $null ) {
      set %sys.encRightvar )
    }
    set %sys.CustomLine Please set a custom Line to use it.
    set %sys.FirstLoad 1
  }


  combocolours 6
  combocolours 8
  combocolours 42
  combocolours 61

  if ( %sys.encU == 1 ) { Did -c syssetup 58 }
  if ( %sys.encBold == 1 ) { Did -c syssetup 57 }
  if ( %sys.sepBold == 1 ) { Did -c syssetup 44 }
  if ( %sys.sepU == 1 ) { Did -c syssetup 45 }
  if ( %sys.valU == 1 ) { Did -c syssetup 13 }
  if ( %sys.valBold == 1 ) { Did -c syssetup 12 }
  if ( %sys.headU == 1 ) { Did -c syssetup 16 }
  if ( %sys.headBold == 1 ) { Did -c syssetup 15 }
  if ( %sys.respondCTCP == 1 ) { Did -c syssetup 89 }
  if ( %sys.removeALLformatting == 1 ) { Did -c syssetup 99 }
  if ( %sys.TurnOffMBM == 1 ) { did -c syssetup 125 }
  if ( %sys.LimitSpace == 1 ) { did -c syssetup 126 }
  if ( %sys.RemoteStats == 1 ) { did -c syssetup 127 }
  if ( %sys.AltUptime == 1 ) { did -c syssetup 129 }
  if ( %sys.UnderLineInHeadings ==  ) { did -c syssetup 132 }
  if ( %sys.TemperatureUnit == C ) { did -c syssetup 137 }
  if ( %sys.TemperatureUnit == F ) { did -c syssetup 138 }
  if ( %sys.TemperatureUnit == BOTH ) { did -c syssetup 68 }
  if ( %sys.ICustMultiLine == 240 ) { did -c syssetup 139 }
  if ( %sys.AutoCheckInterval == connect ) { did -c syssetup 143 }
  if ( %sys.AutoCheckInterval == day ) { did -c syssetup 144 }
  if ( %sys.AutoCheckInterval == week ) { did -c syssetup 145 }
  if ( %sys.AutoCheckInterval == month ) { did -c syssetup 146 }
  if ( %sys.EnableAutoUpdateCheck == 1 ) { did -c syssetup 141 }


  if ( %sys.valCol == 99 ) {
    did -c syssetup 6 17 
  }
  else {
    did -c syssetup 6 $calc(%sys.valCol + 1)
  }

  if ( %sys.headCol == 99 ) {
    did -c syssetup 8 17 
  }
  else {
    did -c syssetup 8 $calc(%sys.headCol + 1)
  }

  if ( %sys.encCol == 99 ) {
    did -c syssetup 61 17 
  }
  else {
    did -c syssetup 61 $calc(%sys.encCol + 1)
  }

  if ( %sys.sepCol == 99 ) {
    did -c syssetup 42 17 
  }
  else {
    did -c syssetup 42 $calc(%sys.sepCol + 1)
  }

  did -a syssetup 3 %sys.encLeftvar
  did -a syssetup 5 %sys.encRightvar
  did -a syssetup 19 %sys.sepWith
  did -a syssetup 21 %sys.CustomLine
  did -a syssetup 66 %sys.gfxcard
  did -a syssetup 75 %sys.soundcard
  did -a syssetup 79 %sys.monitor
  if ( %sys.infodelay == $null ) {
    set %sys.infodelay 0
  }
  did -a syssetup 95 %sys.infodelay

  buildThemesMenu

  did -c syssetup 87 %sys.currenttheme

  :continue

  BuildPluginsMenu

  set %sys.buffer $readini $shortfn($mircdir $+ SystemInfo.ini) uptime os
  if ( %sys.buffer == $null ) {
    writeini " $+ $shortfn($mircdir $+ SystemInfo.ini) $+ " uptime os $os
  }

  if ( %sys.icustomline == $null ) {
    set %sys.icustomline OS,OSINFO,UPTIME,RAM,HDD
    set %sys.icustcount 5
  }

  ;BUILD /ICUST LIST
  set %sys.count 0
  while ( %sys.count < $numtok(%sys.icustomline,44) ) {
    inc %sys.count

    if ( $gettok(%sys.icustomline,%sys.count,44) == OS ) {
      did -a syssetup 98 OS
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == BW ) {
      did -a syssetup 98 Bandwidth
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == OSINFO ) {
      did -a syssetup 98 Install Info
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == UPTIME ) {
      did -a syssetup 98 Uptime
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == DISPLAY ) {
      did -a syssetup 98 Display Info
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == RECUP ) {
      did -a syssetup 98 Record Uptime
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == CPU ) {
      did -a syssetup 98 CPU Info
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == RAM ) {
      did -a syssetup 98 RAM Usage
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == PAGE ) {
      did -a syssetup 98 Page File
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == VMEM ) {
      did -a syssetup 98 Virtual Memory
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == NI ) {
      did -a syssetup 98 Network Interfaces
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == CONN ) {
      did -a syssetup 98 Connection Info
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == GFXCARD ) {
      did -a syssetup 98 Graphics Card
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == SNDCARD ) {
      did -a syssetup 98 Sound Card
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == HDD ) {
      did -a syssetup 98 Hard Disks
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == TEMP ) {
      did -a syssetup 98 Temperature
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == VOLTS ) {
      did -a syssetup 98 Voltages
    }

    if ( $gettok(%sys.icustomline,%sys.count,44) == MONI ) {
      did -a syssetup 98 Monitor
    }
    ;END BUILD /ICUST LIST
  }

  ;BEGIN LEFT OVERS
  if ( $findtok(%sys.icustomline,OS,1,44) == $null ) {
    did -a syssetup 100 OS
  }

  if ( $findtok(%sys.icustomline,BW,1,44) == $null ) {
    did -a syssetup 100 Bandwidth
  }

  if ( $findtok(%sys.icustomline,OSINFO,1,44) == $null ) {
    did -a syssetup 100 Install Info
  }

  if ( $findtok(%sys.icustomline,UPTIME,1,44) == $null ) {
    did -a syssetup 100 Uptime
  }

  if ( $findtok(%sys.icustomline,RECUP,1,44) == $null ) {
    did -a syssetup 100 Record Uptime
  }

  if ( $findtok(%sys.icustomline,CPU,1,44) == $null ) {
    did -a syssetup 100 CPU Info
  }

  if ( $findtok(%sys.icustomline,DISPLAY,1,44) == $null ) {
    did -a syssetup 100 Display Info
  }

  if ( $findtok(%sys.icustomline,RAM,1,44) == $null ) {
    did -a syssetup 100 RAM Usage
  }

  if ( $findtok(%sys.icustomline,PAGE,1,44) == $null ) {
    did -a syssetup 100 Page File
  }

  if ( $findtok(%sys.icustomline,VMEM,1,44) == $null ) {
    did -a syssetup 100 Virtual Memory
  }

  if ( $findtok(%sys.icustomline,NI,1,44) == $null ) {
    did -a syssetup 100 Network Interfaces
  }

  if ( $findtok(%sys.icustomline,CONN,1,44) == $null ) {
    did -a syssetup 100 Connection Info
  }

  if ( $findtok(%sys.icustomline,GFXCARD,1,44) == $null ) {
    did -a syssetup 100 Graphics Card
  }

  if ( $findtok(%sys.icustomline,SNDCARD,1,44) == $null ) {
    did -a syssetup 100 Sound Card
  }

  if ( $findtok(%sys.icustomline,HDD,1,44) == $null ) {
    did -a syssetup 100 Hard Disks
  }

  if ( $findtok(%sys.icustomline,TEMP,1,44) == $null ) {
    did -a syssetup 100 Temperature
  }

  if ( $findtok(%sys.icustomline,VOLTS,1,44) == $null ) {
    did -a syssetup 100 Voltages
  }

  if ( $findtok(%sys.icustomline,MONI,1,44) == $null ) {
    did -a syssetup 100 Monitor
  }
  ;END LEFT OVERS

  did -r syssetup 81
  did -a syssetup 81 %sys.Version

  CheckForDisabledSetup

  if ( %sys.HelpViewed != 1 ) {
    run $shortfn($scriptdir $+ SystemInfoHelp\Index.html)
    set %sys.HelpViewed 1
  }

}


alias -l combocolours {

  did -i syssetup $1 1 White
  did -i syssetup $1 2 Black
  did -i syssetup $1 3 Navy Blue
  did -i syssetup $1 4 Dark Green
  did -i syssetup $1 5 Red
  did -i syssetup $1 6 Brown
  did -i syssetup $1 7 Purple
  did -i syssetup $1 8 Orange
  did -i syssetup $1 9 Yellow
  did -i syssetup $1 10 Light Green
  did -i syssetup $1 11 Turquoise
  did -i syssetup $1 12 Sky Blue
  did -i syssetup $1 13 Blue
  did -i syssetup $1 14 Pink
  did -i syssetup $1 15 Grey
  did -i syssetup $1 16 Light Grey
  did -i syssetup $1 17 No colour

}

on 1:dialog:syssetup:sclick:38:{
  did -r syssetup 3
  did -r syssetup 5
  did -r syssetup 19
  did -a syssetup 3 /
  did -a syssetup 5 \
  did -a syssetup 19 º
  did -u syssetup 12
  did -u syssetup 13
  did -c syssetup 15
  did -c syssetup 125
  did -c syssetup 89
  did -c syssetup 127
  did -u syssetup 99
  did -u syssetup 126
  did -u syssetup 16
  did -u syssetup 57
  did -u syssetup 44
  did -u syssetup 45
  did -c syssetup 58
  did -c syssetup 42 10
  did -c syssetup 61 10
  did -c syssetup 6 17
  did -c syssetup 8 3
  did -r syssetup 95
  did -a syssetup 95 0

}

on 1:dialog:syssetup:sclick:37:{

  set %sys.buffer $did(3).text
  set %sys.encLeftvar $strip(%sys.buffer,burc)

  set %sys.buffer $did(5).text
  set %sys.encRightvar $strip(%sys.buffer,burc)

  set %sys.buffer $did(19).text
  set %sys.sepWith $strip(%sys.buffer,burc)

  set %sys.CustomLine $did(21).text

  if ( $did(132).state >= 1 ) {
    set %sys.UnderLineInHeadings 
  }
  else {
    set %sys.UnderLineInHeadings 
  }

  if ( $did(139).state >= 1 ) {
    set %sys.ICustMultiLine 240
  }
  else {
    set %sys.ICustMultiLine 3000000
  }

  if ( $did(141).state >= 1 ) {
    set %sys.EnableAutoUpdateCheck 1
  }
  else {
    set %sys.EnableAutoUpdateCheck 0
  }

  if ( $did(143).state >= 1 ) {
    set %sys.AutoCheckInterval connect
  }

  if ( $did(144).state >= 1 ) {
    set %sys.AutoCheckInterval day
  }

  if ( $did(145).state >= 1 ) {
    set %sys.AutoCheckInterval week
  }

  if ( $did(146).state >= 1 ) {
    set %sys.AutoCheckInterval month
  }

  if ( $did(137).state >= 1 ) {
    set %sys.TemperatureUnit C
  }

  if ( $did(138).state >= 1 ) {
    set %sys.TemperatureUnit F
  }

  if ( $did(68).state >= 1 ) {
    set %sys.TemperatureUnit BOTH
  }

  if ( $did(99).state >= 1 ) {
    set %sys.removeALLformatting 1
  }
  else {
    set %sys.removeALLformatting 0
  }  

  if ( $did(126).state >= 1 ) {
    set %sys.LimitSpace 1
  }
  else {
    set %sys.LimitSpace 0
  }

  if ( $did(12).state >= 1 ) {
    set %sys.valBold 1
  }
  else {
    set %sys.valBold 0
  }

  if ( $did(127).state >= 1 ) {
    set %sys.RemoteStats 1
  }
  else {
    set %sys.RemoteStats 0
  }

  if ( $did(129).state >= 1 ) {
    set %sys.AltUptime 1
  }
  else {
    set %sys.AltUptime 0
  }

  if ( $did(89).state >= 1 ) {
    set %sys.respondCTCP 1
  }
  else {
    set %sys.respondCTCP 0
  }

  if ( $did(13).state >= 1 ) {
    set %sys.valU 1
  }
  else {
    set %sys.valU 0
  }

  if ( $did(15).state >= 1 ) {
    set %sys.headBold 1
  }
  else {
    set %sys.headBold 0
  }

  if ( $did(16).state >= 1 ) {
    set %sys.headU 1
  }
  else {
    set %sys.headU 0
  }

  if ( $did(57).state >= 1 ) {
    set %sys.encBold 1
  }
  else {
    set %sys.encBold 0
  }

  if ( $did(58).state >= 1 ) {
    set %sys.encU 1
  }
  else {
    set %sys.encU 0
  }

  if ( $did(44).state >= 1 ) {
    set %sys.sepBold 1
  }
  else {
    set %sys.sepBold 0
  }

  if ( $did(45).state >= 1 ) {
    set %sys.sepU 1
  }
  else {
    set %sys.sepU 0
  }

  if ( $did(61).sel == 17 ) {
    set %sys.encCol 99
  }
  else {
    set %sys.encCol $calc($did(61).sel - 1)
  }

  if ( $did(42).sel == 17 ) {
    set %sys.sepCol 99
  }
  else {
    set %sys.sepCol $calc($did(42).sel - 1)
  }

  if ( $did(6).sel == 17 ) {
    set %sys.valCol 99
  }
  else {
    set %sys.valCol $calc($did(6).sel - 1)
  }

  if ( $did(8).sel == 17 ) {
    set %sys.headCol 99
  }
  else {
    set %sys.headCol $calc($did(8).sel - 1)
  }

  set %sys.buffer $did(66).text
  set %sys.gfxcard $strip(%sys.buffer,burc)

  set %sys.buffer $did(75).text
  set %sys.soundcard $strip(%sys.buffer,burc)

  set %sys.buffer $did(79).text
  set %sys.monitor $strip(%sys.buffer,burc)

  set %sys.buffer $did(95).text
  set %sys.buffer $strip(%sys.buffer,burc)
  if ((%sys.buffer >= 0) && (%sys.buffer < 11)) {
    set %sys.infodelay $strip(%sys.buffer,burc)
  }

  if ( $did(125).state >= 1 ) {
    set %sys.TurnOffMBM 1
  }
  else {
    set %sys.TurnOffMBM 0
  }

  unset %sys.icustomline
  set %sys.icustcount 0

  ;BEGIN NEW ICUST DIALOG SAVE CODE
  unset %sys.icustomline
  set %sys.icustcount 0
  set %sys.count 0

  while ( %sys.count < $did(syssetup,98).lines ) {
    inc %sys.count
    set %sys.icustcount $did(syssetup,98).lines

    if ( $did(syssetup,98,%sys.count).text == OS ) {
      set %sys.icustomline %sys.icustomline $+ OS
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Bandwidth ) {
      set %sys.icustomline %sys.icustomline $+ BW
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Install Info ) {
      set %sys.icustomline %sys.icustomline $+ OSINFO
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Uptime ) {
      set %sys.icustomline %sys.icustomline $+ UPTIME
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Record Uptime ) {
      set %sys.icustomline %sys.icustomline $+ RECUP
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == CPU Info ) {
      set %sys.icustomline %sys.icustomline $+ CPU
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == RAM Usage ) {
      set %sys.icustomline %sys.icustomline $+ RAM
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }

    }

    if ( $did(syssetup,98,%sys.count).text == Page File ) {
      set %sys.icustomline %sys.icustomline $+ PAGE
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Display Info ) {
      set %sys.icustomline %sys.icustomline $+ DISPLAY
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Virtual Memory ) {
      set %sys.icustomline %sys.icustomline $+ VMEM
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Network Interfaces ) {
      set %sys.icustomline %sys.icustomline $+ NI
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Connection Info ) {
      set %sys.icustomline %sys.icustomline $+ CONN
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Graphics Card ) {
      set %sys.icustomline %sys.icustomline $+ GFXCARD
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text ==  Sound Card ) {
      set %sys.icustomline %sys.icustomline $+ SNDCARD
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Hard Disks ) {
      set %sys.icustomline %sys.icustomline $+ HDD
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Temperature ) {
      set %sys.icustomline %sys.icustomline $+ TEMP
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Voltages ) {
      set %sys.icustomline %sys.icustomline $+ VOLTS
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }

    if ( $did(syssetup,98,%sys.count).text == Monitor ) {
      set %sys.icustomline %sys.icustomline $+ MONI
      if ( %sys.count < $did(syssetup,98).lines ) {
        set %sys.icustomline %sys.icustomline $+ ,
      }
    }
  }
  if ( %sys.icustcount == 0 ) {
    set %sys.icustomline NOTHING
  }

  ;END NEW ICUST DIALOG SAVE CODE

}

on *:dialog:syssetup:sclick:101:{
  if ( $did(syssetup,100).sel != $null ) {
    did -a syssetup 98 $did(syssetup,100).seltext
    did -d syssetup 100 $did(syssetup,100).sel
  }
}

on *:dialog:syssetup:sclick:69:{
  ni -change
}


on *:dialog:syssetup:sclick:102:{
  while ( $did(syssetup,100).lines > 0 ) {
    did -a syssetup 98 $did(syssetup,100,1).text
    did -d syssetup 100 1
  }
}

on *:dialog:syssetup:sclick:109:{
  while ( $did(syssetup,98).lines > 0 ) {
    did -a syssetup 100 $did(syssetup,98,1).text
    did -d syssetup 98 1
  }
}

on *:dialog:syssetup:sclick:110:{
  set %sys.buffer $did(syssetup,98).sel
  if ((%sys.buffer != $null) && (%sys.buffer > 1)) {
    did -i syssetup 98 $calc(%sys.buffer + 1) $did(syssetup,98,$calc(%sys.buffer - 1)).text
    did -d syssetup 98 $calc(%sys.buffer - 1)
  }
}

on *:dialog:syssetup:sclick:111:{
  set %sys.buffer $did(syssetup,98).sel
  if ((%sys.buffer != $null) && (%sys.buffer < $did(syssetup,98).lines)) {
    did -i syssetup 98 %sys.buffer $did(syssetup,98,$calc(%sys.buffer + 1)).text
    did -d syssetup 98 $calc(%sys.buffer + 2)
  }
}

on *:dialog:syssetup:sclick:108:{
  if ( $did(syssetup,98).sel != $null ) {
    did -a syssetup 100 $did(syssetup,98).seltext
    did -d syssetup 98 $did(syssetup,98).sel
  }
}

; <<<<< BEGIN PREVIEW CODE >>>>>

on 1:dialog:syssetup:sclick:59:{

  ; <<<<< BEGIN BACKUP VALUES >>>>>

  set %sys.encLeftvar.backup %sys.encLeftvar
  set %sys.encRightvar.backup %sys.encRightvar
  set %sys.encU.backup %sys.encU
  set %sys.encBold.backup %sys.encBold
  set %sys.encCol.backup %sys.encCol
  set %sys.valCol.backup %sys.valCol
  set %sys.valU.backup %sys.valU
  set %sys.valBold.backup %sys.valBold
  set %sys.headCol.backup %sys.headCol
  set %sys.headU.backup %sys.headU
  set %sys.headBold.backup %sys.headBold
  set %sys.sepWith.backup %sys.sepWith
  set %sys.sepCol.backup %sys.sepCol
  set %sys.sepBold.backup %sys.sepBold
  set %sys.sepU.backup %sys.sepU
  set %sys.removeALLformatting.backup %sys.removeALLformatting

  ; <<<<< END BACKUP VALUES >>>>>

  ; <<<<< BEGIN GATHERING VALUES >>>>>

  set %sys.buffer $did(3).text
  set %sys.encLeftvar $strip(%sys.buffer,burc)

  set %sys.buffer $did(5).text
  set %sys.encRightvar $strip(%sys.buffer,burc)

  set %sys.buffer $did(19).text
  set %sys.sepWith $strip(%sys.buffer,burc)

  if ( $did(99).state >= 1 ) {
    set %sys.removeALLformatting 1
  }
  else {
    set %sys.removeALLformatting 0
  }  

  if ( $did(12).state >= 1 ) {
    set %sys.valBold 1
  }
  else {
    set %sys.valBold 0
  }

  if ( $did(13).state >= 1 ) {
    set %sys.valU 1
  }
  else {
    set %sys.valU 0
  }

  if ( $did(15).state >= 1 ) {
    set %sys.headBold 1
  }
  else {
    set %sys.headBold 0
  }

  if ( $did(16).state >= 1 ) {
    set %sys.headU 1
  }
  else {
    set %sys.headU 0
  }

  if ( $did(57).state >= 1 ) {
    set %sys.encBold 1
  }
  else {
    set %sys.encBold 0
  }

  if ( $did(58).state >= 1 ) {
    set %sys.encU 1
  }
  else {
    set %sys.encU 0
  }

  if ( $did(44).state >= 1 ) {
    set %sys.sepBold 1
  }
  else {
    set %sys.sepBold 0
  }

  if ( $did(45).state >= 1 ) {
    set %sys.sepU 1
  }
  else {
    set %sys.sepU 0
  }

  if ( $did(61).sel == 17 ) {
    set %sys.encCol 99
  }
  else {
    set %sys.encCol $calc($did(61).sel - 1)
  }

  if ( $did(42).sel == 17 ) {
    set %sys.sepCol 99
  }
  else {
    set %sys.sepCol $calc($did(42).sel - 1)
  }

  if ( $did(6).sel == 17 ) {
    set %sys.valCol 99
  }
  else {
    set %sys.valCol $calc($did(6).sel - 1)
  }

  if ( $did(8).sel == 17 ) {
    set %sys.headCol 99
  }
  else {
    set %sys.headCol $calc($did(8).sel - 1)
  }

  ; <<<<< END GATHERING VALUES >>>>>

  setupcolours

  ; <<<<< BEING MAKING WINDOW >>>>>

  window -c @SystemInfo

  window -ab @SystemInfo

  /aline @SystemInfo *** These are the CURRENT SETTINGS IN YOUR DIALOG.  None of your official settings have been altered.
  /aline @SystemInfo *** TO NOT USE THESE SETTINGS. Just click "Exit Without Save" in the dialog.

  set %sys.rb_size 30
  rambar

  DoUptimeStuff

  set %sys.output $SIHeader(Operating System) $SIItemOutput($SI(OS)) $SIDelib $SIHeader(Uptime) $SIItemOutput(%sys.UptimeOutput) $SIDelib $SIHeader(Record) $SIItemOutput(%sys.RecordUptime)
  if ( %sys.removeALLformatting == 1 ) {
    /aline @SystemInfo $strip(%sys.output,burc)
  }
  else {
    /aline @SystemInfo %sys.output
  }
  unset %sys.output
  set %sys.output $SIHeader(Memory Usage) $SIItemOutput($dll($scriptdirmoo.dll,meminfo,_)) $SIDelib $result $SIHeader(Display Info) $SIItemOutput($dll($scriptdirmoo.dll,screeninfo,_)) $SIDelib $SIHeader(Monitor) $SIItemOutput(%sys.monitor)
  if ( %sys.removeALLformatting == 1 ) {
    /aline @SystemInfo $strip(%sys.output,burc)
  }
  else {
    /aline @SystemInfo %sys.output
  }
  unset %sys.output


  getmbm5info

  set %sys.output $SIHeader(CPU Info) $SIItemOutput($si(CPU))
  set %sys.output %sys.output $SIDelib $SIHeader($getmbm5info)
  if ( %sys.removeALLformatting == 1 ) {
    /aline @SystemInfo $strip(%sys.output,burc)
  }
  else {
    /aline @SystemInfo %sys.output
  }
  unset %sys.output

  /calcspace
  /calcspace2

  set %sys.output $SIHeader(Hard Disks) $SIItemOutput(%sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ Total $+ %sys.sepColourvar $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ / $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ Free $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.total.size $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ %sys.total.free $+ %sys.byteunit $+ %sys.UnderLineValue $+ %sys.BoldValue $SIDelib %sys.bigstring)
  if ( %sys.removeALLformatting == 1 ) {
    /aline @SystemInfo $strip(%sys.output,burc)
  }
  else {
    /aline @SystemInfo %sys.output
  }
  unset %sys.output


  set %sys.output $SIHeader(Connection/Network) $SIItemOutput($SI(NI))
  if ( %sys.removeALLformatting == 1 ) {
    /aline @SystemInfo $strip(%sys.output,burc)
  }
  else {
    /aline @SystemInfo %sys.output
  }
  unset %sys.output

  /aline @SystemInfo *** These are the CURRENT SETTINGS IN YOUR DIALOG.  None of your official settings have been altered.
  /aline @SystemInfo *** TO NOT USE THESE SETTINGS. Just click "Exit Without Save" in the dialog.

  ; <<<<< END WINDOW CODE >>>>>

  ; <<<<< BEING RE-DOING VARS >>>>>

  set %sys.encLeftvar %sys.encLeftvar.backup
  set %sys.encRightvar %sys.encRightvar.backup
  set %sys.encU %sys.encU.backup
  set %sys.encBold %sys.encBold.backup
  set %sys.encCol %sys.encCol.backup
  set %sys.valCol %sys.valCol.backup
  set %sys.valU %sys.valU.backup
  set %sys.valBold %sys.valBold.backup
  set %sys.headCol %sys.headCol.backup
  set %sys.headU %sys.headU.backup
  set %sys.headBold %sys.headBold.backup
  set %sys.sepWith %sys.sepWith.backup
  set %sys.sepCol %sys.sepCol.backup
  set %sys.sepBold %sys.sepBold.backup
  set %sys.sepU %sys.sepU.backup
  set %sys.removeALLformatting %sys.removeALLformatting.backup

  ; <<<<< END RE-DOING VARS >>>>>

}

; <<<<< END PREVIEW CODE >>>>>

on 1:dialog:syssetup:sclick:46:{
  run $shortfn($scriptdir $+ SystemInfoHelp\Index.html)
}

; <<<<< BEGIN DELETE CODE >>>>>

on 1:dialog:syssetup:sclick:90:{

  if ( $?!="Are you sure you want to delete the theme?!" == $false ) {
    goto veryend
  }

  set %sys.buffer $did(87).sel

  if ( %sys.buffer == $null ) {
    goto veryend
  }

  set %sys.buffer $ini($shortfn($mircdir $+ systhemes.ini),%sys.buffer)

  remini $shortfn($mircdir $+ systhemes.ini) %sys.buffer
  buildThemesMenu
  :veryend
}

; <<<<< END DELETE CODE >>>>>

; <<<<< BEGIN SAVE CODE >>>>>

on 1:dialog:syssetup:sclick:84:{

  set %sys.ini $ini($shortfn($mircdir $+ systhemes.ini),0)
  set %sys.ini $ini($shortfn($mircdir $+ systhemes.ini),%sys.ini)
  set %sys.ini $calc(%sys.ini + 1)

  set %sys.buffer $$?="Enter a name for your theme!"

  :name

  while ( %sys.buffer == $null ) {
    set %sys.buffer $$?="Enter a name for your theme!"
  }

  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini name %sys.buffer

  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini version %sys.simpleversion

  set %sys.buffer $did(3).text
  if ( %sys.buffer == $null ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encLeftVar <NO VALUE>
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encLeftVar $strip(%sys.buffer,burc)
  }


  set %sys.buffer $did(5).text
  if ( %sys.buffer == $null ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encRightvar <NO VALUE>
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encRightvar $strip(%sys.buffer,burc)
  }

  set %sys.buffer $did(19).text
  if ( %sys.buffer == $null ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepWith <NO VALUE>
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepWith $strip(%sys.buffer,burc)
  }

  if ( $did(12).state >= 1 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini valBold 1
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini valBold 0
  }

  if ( $did(13).state >= 1 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini valU 1
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini valU 0
  }

  if ( $did(15).state >= 1 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini headBold 1
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini headBold 0
  }

  if ( $did(16).state >= 1 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini headU 1
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini headU 0
  }

  if ( $did(57).state >= 1 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encBold 1
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encBold 0
  }

  if ( $did(58).state >= 1 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encU 1
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encU 0
  }

  if ( $did(44).state >= 1 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepBold 1
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepBold 0
  }

  if ( $did(45).state >= 1 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepU 1
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepU 0
  }

  if ( $did(61).sel == 17 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encCol 99
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encCol $calc($did(61).sel - 1)
  }

  if ( $did(42).sel == 17 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepCol 99
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepCol $calc($did(42).sel - 1)
  }

  if ( $did(6).sel == 17 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini valCol 99
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini valCol $calc($did(6).sel - 1)
  }

  if ( $did(8).sel == 17 ) {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini headCol 99
  }
  else {
    writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini headCol $calc($did(8).sel - 1)
  }

  buildThemesMenu

}

; <<<<< END SAVE CODE >>>>>

; <<<<< BEGIN EXPORT CODE >>>>>

on 1:dialog:syssetup:sclick:85:{

  set %sys.ini 1

  set %sys.buffer $$?="Please enter a file name without an extension! (NO SPACES)"

  set %sys.iniexpath $shortfn($scriptdir $+ Themes\ $+ %sys.buffer $+ .thm)

  while ( %sys.iniexpath == $true ) {

    set %sys.buffer $$?="That file name exists, please specifiy another name! (NO SPACES)"

    set %sys.iniexpath $shortfn($scriptdir $+ Themes\ $+ %sys.buffer $+ .thm)

  }

  set %sys.buffer2 $$?="Please enter a name for the theme!"

  while ( %sys.buffer2 == $null ) {

    set %sys.buffer2 $$?="Please enter a name for the theme!"

  }


  writeini " $+ %sys.iniexpath $+ " %sys.ini name %sys.buffer2

  writeini " $+ %sys.iniexpath $+ " %sys.ini version %sys.simpleversion

  set %sys.buffer $did(3).text
  if ( %sys.buffer == $null ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encLeftVar <NO VALUE>
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encLeftVar $strip(%sys.buffer,burc)
  }

  set %sys.buffer $did(5).text
  if ( %sys.buffer == $null ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encRightvar <NO VALUE>
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encRightvar $strip(%sys.buffer,burc)
  }

  set %sys.buffer $did(19).text
  if ( %sys.buffer == $null ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini sepWith <NO VALUE>
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini sepWith $strip(%sys.buffer,burc)
  }

  if ( $did(12).state >= 1 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini valBold 1
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini valBold 0
  }

  if ( $did(13).state >= 1 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini valU 1
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini valU 0
  }

  if ( $did(15).state >= 1 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini headBold 1
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini headBold 0
  }

  if ( $did(16).state >= 1 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini headU 1
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini headU 0
  }

  if ( $did(57).state >= 1 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encBold 1
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encBold 0
  }

  if ( $did(58).state >= 1 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encU 1
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encU 0
  }

  if ( $did(44).state >= 1 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini sepBold 1
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini sepBold 0
  }

  if ( $did(45).state >= 1 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini sepU 1
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini sepU 0
  }

  if ( $did(61).sel == 17 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encCol 99
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini encCol $calc($did(61).sel - 1)
  }

  if ( $did(42).sel == 17 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini sepCol 99
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini sepCol $calc($did(42).sel - 1)
  }

  if ( $did(6).sel == 17 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini valCol 99
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini valCol $calc($did(6).sel - 1)
  }

  if ( $did(8).sel == 17 ) {
    writeini " $+ %sys.iniexpath $+ " %sys.ini headCol 99
  }
  else {
    writeini " $+ %sys.iniexpath $+ " %sys.ini headCol $calc($did(8).sel - 1)
  }

}

; <<<<< END EXPORT CODE >>>>>

; <<<<< BEGIN APPLY CODE >>>>>

on 1:dialog:syssetup:sclick:83:{


  set %sys.ini $did(87).sel
  set %sys.currenttheme $did(87).sel
  set %sys.ini $ini($shortfn($mircdir $+ systhemes.ini),%sys.ini)

  if ( %sys.ini == $null ) {
    goto veryend
  }

  :continue
  did -r syssetup 3
  did -r syssetup 5
  did -r syssetup 19
  set %sys.buffer $readini($shortfn($mircdir $+ systhemes.ini),n,%sys.ini,encLeftVar)
  if ( %sys.buffer == <NO VALUE> ) {
    did -r syssetup 3
  }
  else {
    did -a syssetup 3 %sys.buffer
  }

  set %sys.buffer $readini($shortfn($mircdir $+ systhemes.ini),n,%sys.ini,encRightVar)
  if ( %sys.buffer == <NO VALUE> ) {
    did -r syssetup 5
  }
  else {
    did -a syssetup 5 $eval(%sys.buffer,1)
  }

  set %sys.buffer $readini($shortfn($mircdir $+ systhemes.ini),n,%sys.ini,sepWith)
  if ( %sys.buffer == <NO VALUE> ) {
    did -r syssetup 19
  }
  else {
    did -a syssetup 19 $eval(%sys.buffer,1)
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini valBold

  if ( %sys.buffer == 1 ) {
    did -c syssetup 12
  }
  else {
    did -u syssetup 12
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini valU

  if ( %sys.buffer == 1 ) {
    did -c syssetup 13
  }
  else {
    did -u syssetup 13
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini headBold

  if ( %sys.buffer == 1 ) {
    did -c syssetup 15
  }
  else {
    did -u syssetup 15
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini headU

  if ( %sys.buffer == 1 ) {
    did -c syssetup 16
  }
  else {
    did -u syssetup 16
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini encBold

  if ( %sys.buffer == 1 ) {
    did -c syssetup 57
  }
  else {
    did -u syssetup 57
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini encU

  if ( %sys.buffer == 1 ) {
    did -c syssetup 58
  }
  else {
    did -u syssetup 58
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini sepBold

  if ( %sys.buffer == 1 ) {
    did -c syssetup 44
  }
  else {
    did -u syssetup 44
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini sepU

  if ( %sys.buffer == 1 ) {
    did -c syssetup 45
  }
  else {
    did -u syssetup 45
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini encCol

  if ( %sys.buffer == 99 ) {
    did -c syssetup 61 17
  }
  else {
    did -c syssetup 61 $calc(%sys.buffer + 1)
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini sepCol

  if ( %sys.buffer == 99 ) {
    did -c syssetup 42 17
  }
  else {
    did -c syssetup 42 $calc(%sys.buffer + 1)
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini valCol

  if ( %sys.buffer == 99 ) {
    did -c syssetup 6 17
  }
  else {
    did -c syssetup 6 $calc(%sys.buffer + 1)
  }

  set %sys.buffer $readini $shortfn($mircdir $+ systhemes.ini) %sys.ini headCol

  if ( %sys.buffer == 99 ) {
    did -c syssetup 8 17
  }
  else {
    did -c syssetup 8 $calc(%sys.buffer + 1)
  }
  :veryend
}

; <<<<< END APPLY CODE >>>>>

; <<<<< BEGIN IMPORT CODE >>>>>

on 1:dialog:syssetup:sclick:86:{

  set %sys.iniinpath $sfile($scriptdir $+ \Themes\,Find file to import!)

  if ( %sys.iniinpath == $null ) {

    goto veryend

  }

  set %sys.iniinpath $shortfn(%sys.iniinpath)
  set %sys.ini $ini($shortfn($mircdir $+ systhemes.ini),0)
  set %sys.ini $ini($shortfn($mircdir $+ systhemes.ini),%sys.ini)
  set %sys.ini $calc(%sys.ini + 1)

  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini name $readini %sys.iniinpath 1 name
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini version $readini %sys.iniinpath 1 version
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encLeftVar $readini(%sys.iniinpath,n,1,encLeftVar)
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encRightVar $readini(%sys.iniinpath,n,1,encRightVar)
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepWith $readini(%sys.iniinpath,n,1,sepWith)
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini valBold $readini %sys.iniinpath 1 valBold
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini valU $readini %sys.iniinpath 1 valU
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini headBold $readini %sys.iniinpath 1 headBold
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini headU $readini %sys.iniinpath 1 headU
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encBold $readini %sys.iniinpath 1 encBold
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encU $readini %sys.iniinpath 1 encU
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepBold $readini %sys.iniinpath 1 sepBold
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepU $readini %sys.iniinpath 1 sepU
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini encCol $readini %sys.iniinpath 1 encCol
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini sepCol $readini %sys.iniinpath 1 sepCol
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini valCol $readini %sys.iniinpath 1 valCol
  writeini " $+ $shortfn($mircdir $+ systhemes.ini) $+ " %sys.ini headCol $readini %sys.iniinpath 1 headCol

  buildThemesMenu
  :veryend
}

; <<<<< END IMPORT CODE >>>>>

on *:DIALOG:syssetup:sclick:120:{
  run mailto:anhilator@fastrun.at
}

on *:DIALOG:syssetup:sclick:116:{
  run http://www.planet-pmp.com/
}

on *:DIALOG:syssetup:sclick:122:{
  run http://www.influenced.net/
}

on *:DIALOG:syssetup:sclick:124:{
  run http://www.darkengine.net/
}

on *:DIALOG:syssetup:sclick:118:{
  run http://www.phucknut.net/
}

on 1:dialog:syssetup:sclick:52:{
  run http://scripts.phucknut.net/
}

on 1:dialog:syssetup:sclick:54:{
  run mailto:irchs@btinternet.com
}

on 1:dialog:syssetup:sclick:56:{
  run http://www.mircscripts.org/dstudio/
}

on 1:dialog:syssetup:sclick:72:{
  run http://mbm.livewiredev.com
}

on 1:dialog:syssetup:sclick:48:{
  run mailto:irchs@btinternet.com
}

on 1:dialog:syssetup:sclick:34:{
  run http://bugs.phucknut.net
}

on 1:dialog:syssetup:sclick:23:{
  run $scriptdir $+ SystemInfoHelp/index.html
}

on 1:dialog:syssetup:sclick:74:{
  did -r syssetup 66

  did -a syssetup 66 $de(videocard)


  did -r syssetup 75

  did -a syssetup 75 $de(soundcard)

  did -r syssetup 79

  did -a syssetup 79 $de(monitor)

}

alias icust {
  ; This should be fun, Intelligent Custom Line
  unset %sys.output
  set %sys.parsecount 0
  setupcolours
  set %sys.rb_size 10
  calcspace
  calcspace2
  set %sys.tempcount 0
  while ( %sys.tempcount < $numtok(%sys.icustomline,44) ) {
    inc %sys.tempcount
    if ( OS == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(OS) $SIItemOutput($si(os))
      inc %sys.parsecount
      if ( %sys.icustcount > %sys.parsecount ) {
        set %sys.output %sys.output $SIDelib
      }
    }

    if ( OSINFO == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(OSInstall) $SIItemOutput($OSInstalledOn)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( BW == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(BW) $SIItemOutput($si(BWD))
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( UPTIME == $gettok(%sys.icustomline,%sys.tempcount,44) ) {

      DoUptimeStuff

      set %sys.output %sys.output $SIHeader(Up) $SIItemOutput(%sys.UptimeOutput)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( RECUP == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(RecUP) $SIItemOutput(%sys.RecordUptime)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( CPU == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(CPU) $SIItemOutput($si(CPU))
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( TEMP == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      getmbm5info
      set %sys.output %sys.output $SIHeader(Temp) $SIItemOutput($getmbm5info)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( RAM == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(Mem) $SIItemOutput($dll($scriptdirmoo.dll,meminfo,_))
      if ( <RAMBAR> isin %sys.icustomline ) {
        rambar
        set %sys.output %sys.output  $+ %sys.sepColourvar $+ / $result
      }
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( DISPLAY == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(Disp) $SIItemOutput($dll($scriptdirmoo.dll,screeninfo,_))
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( PAGE == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(Page File) $SIItemOutput($pagefile)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( VMEM == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(Virtual Memory) $SIItemOutput($virtualmem)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( MONI == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(Moni) $SIItemOutput(%sys.monitor)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( GFXCARD == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(VidCard) $SIItemOutput(%sys.gfxcard)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( SNDCARD == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(Sound) $SIItemOutput(%sys.soundcard)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( HDD == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(HD) $SIItemOutput(%sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ T $+ %sys.UnderLineInHeadings $+ otal/ $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ree $+ %sys.UnderLineHeader $+ %sys.BoldHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.total.size $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ %sys.total.free $+ %sys.byteunit $+ %sys.UnderLineValue $+  $+ %sys.BoldValue)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( CONN == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(Conn) $SIItemOutput(%sys.ConnectionBuffer)
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

    if ( NI == $gettok(%sys.icustomline,%sys.tempcount,44) ) {
      set %sys.output %sys.output $SIHeader(Network) $SIItemOutput($si(NI))
      inc %sys.parsecount
      if ( $len(%sys.output) > %sys.ICustMultiLine ) {
        OutputInfo %sys.output
        unset %sys.output
      }
      else {
        if ( %sys.icustcount > %sys.parsecount ) {
          set %sys.output %sys.output $SIDelib
        }
      }
    }

  }

  if ( %sys.parsecount == 0 ) {
    echo 4*** Please setup your Intelligent Custom Line in the SystemInfo by C}{$ setup dialog!
  }
  else {
    if ( %sys.output != $null ) {
      OutputInfo %sys.output
    }
    unset %sys.output
  }

}


alias cust {
  setupcolours
  if ( $1 != $null ) {
    set %sys.output $1-200
  }
  else {
    set %sys.output %sys.CustomLine
  }
  set %sys.output $replace(%sys.output,@OSInstallInfo,$OSInstalledOn)
  set %sys.output $replace(%sys.output,@os,$si(os))

  DoUptimeStuff

  set %sys.output $replace(%sys.output,@up,%sys.UptimeOutput)
  set %sys.output $replace(%sys.output,@cpu,$si(CPU))
  set %sys.output $replace(%sys.output,@mem,$dll($scriptdirmoo.dll,meminfo,_))
  set %sys.output $replace(%sys.output,@hd,%sys.total.size $+ / $+ %sys.total.free)
  set %sys.output $replace(%sys.output,@ni,$si(NI))
  set %sys.output $replace(%sys.output,@res,$dll($scriptdirmoo.dll,screeninfo,_))
  set %sys.output $replace(%sys.output,@temp,$getmbm5info)
  set %sys.output $replace(%sys.output,@mon,%sys.monitor)
  set %sys.output $replace(%sys.output,@gfx,%sys.gfxcard)
  set %sys.output $replace(%sys.output,@snd,%sys.soundcard)
  set %sys.output $replace(%sys.output,@recup,%sys.RecordUptime)

  ;NEW ONES

  set %sys.output $replace(%sys.output,@pageinfo,$pagefile)
  set %sys.output $replace(%sys.output,@vmeminfo,$virtualmem)
  set %sys.output $replace(%sys.output,@RAMBAR,$rambar)
  set %sys.output $replace(%sys.output,@PAGEBAR,$PAGEBAR)
  set %sys.output $replace(%sys.output,@VMEMBAR,$VMEMBAR)

  say %sys.output

}


alias display {
  setupcolours
  OutputInfo $SIHeader(Display Info) $SIItemOutput($dll($scriptdirmoo.dll,screeninfo,_)) $SIDelib $SIHeader(Monitor) $SIItemOutput(%sys.monitor)
}

alias periph {
  setupcolours
  OutputInfo $SIHeader(Video Card) $SIItemOutput(%sys.gfxcard) $SIDelib $SIHeader(Sound Card) $SIItemOutput(%sys.soundcard)
}

on 1:dialog:syssetup:sclick:93:{

  set %sys.checktopic $ini($shortfn($mircdir $+ SystemInfo.ini),uptime)

  set %sys.buffer $did(91).sel

  if ( %sys.buffer == $null ) {
    goto veryend
  }

  if ( %sys.buffer >= %sys.checktopic ) {
    /inc %sys.buffer 1
  }
  set %sys.buffer2 $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.buffer)

  set %sys.buffer $readini $shortfn($mircdir $+ SystemInfo.ini) %sys.buffer2 command

  %sys.buffer


  :veryend
}

on 1:dialog:syssetup:sclick:94:{
  set %sys.buffer $sfile($mircdir,Please choose an addon to load!,Load!)
  if ( %sys.buffer == $null ) {
    echo 4*** Please select an addon to load!
  }
  else {
    /load -rs " $+ %sys.buffer $+ "
  }
  BuildPluginsMenu
}

on *:DIALOG:syssetup:sclick:141,125:{
  CheckForDisabledSetup
}

alias -l CheckForDisabledSetup {

  if ( $did(syssetup,141).state >= 1 ) {
    did -e syssetup 143,144,145,146
  }
  else {
    did -b syssetup 143,144,145,146
  }

  if ( $did(syssetup,125).state >= 1 ) {
    did -b syssetup 137,138,68
  }
  else {
    did -e syssetup 137,138,68
  }

}

alias updateuptime {
  DoUptimeStuff
}

alias -l detectplugins {
  setupcolours
  unset %sys.plugins
  set %sys.topictoscan 0
  set %sys.counter 0
  :beginloop
  /inc %sys.topictoscan 1

  if ( %sys.counter >= 3 ) {

    set %sys.buffer $readini $shortfn($mircdir $+ SystemInfo.ini) $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.topictoscan) name
    if ( %sys.buffer == $null ) {
      goto veryend
    }

    set %sys.LastPluginLoaded %sys.buffer
    set %sys.LastPluginLoadedVersion $readini $shortfn($mircdir $+ SystemInfo.ini) $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.topictoscan) version

    /inc %sys.counter 1
    goto beginloop

  }

  if ( $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.topictoscan) == uptime ) {
    goto beginloop
  }

  set %sys.buffer $readini $shortfn($mircdir $+ SystemInfo.ini) $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.topictoscan) name
  if ( %sys.buffer == $null ) {

    goto veryend
  }
  else {
    /inc %sys.counter 1
    if ( %sys.counter == 1 ) {
      set %sys.plugins   $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ Addons: $readini $shortfn($mircdir $+ SystemInfo.ini) $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.topictoscan) name - $readini $shortfn($mircdir $+ SystemInfo.ini) $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.topictoscan) version $+ %sys.UnderLineValue $+  $+ %sys.BoldValue
      goto beginloop
    }
    else {
      set %sys.plugins %sys.plugins $SIDelib  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $readini $shortfn($mircdir $+ SystemInfo.ini) $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.topictoscan) name - $readini $shortfn($mircdir $+ SystemInfo.ini) $ini($shortfn($mircdir $+ SystemInfo.ini),%sys.topictoscan) version $+ %sys.UnderLineValue $+  $+ %sys.BoldValue
      goto beginloop
    }
  }


  :veryend
  if ( %sys.counter >= 4 ) {
    set %sys.plugins   $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ Addons: %sys.counter addons loaded $+ %sys.UnderLineValue $+  $+ %sys.BoldValue $SIDelib  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ Last loaded addon: %sys.LastpluginLoaded - %sys.LastPluginLoadedVersion $+ %sys.UnderLineValue $+  $+ %sys.BoldValue
  }

  if ( %sys.plugins == $null ) {
    set %sys.plugins   $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ Addons: None detected $+ %sys.UnderLineValue $+  $+ %sys.BoldValue
  }

  :veryvend
}

alias client {
  SetupImportantStuff
  detectplugins
  set %sys.output $SIHeader(Client Version) $SIItemOutput(mIRC v $+ $version) $SIDelib $SIHeader(MOO Version) $SIItemOutput($dll($scriptdirmoo.dll,version,_)) $SIDelib 
  if (($getmbm5info(MBMVersion) != $null) && ($getmbm5info(MBMVersion) != Deactivated by user) && ($getmbm5info(MBMVersion) != MBM not loaded)) {
    set %sys.output %sys.output $SIHeader(MBM Version) $SIItemOutput($getmbm5info(MBMVersion)) $SIDelib 
  }
  set %sys.output %sys.output $SIHeader(Script Version) $SIItemOutput(SystemInfo by C}{$ %sys.version $+  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $SIDelib %sys.plugins $+ %sys.UnderLineValue $+  $+ %sys.BoldValue)
  OutputInfo %sys.output
  unset %sys.output
}

alias -l calcspace {
  set %sys.total.size 0
  set %sys.total.free 0
  set %sys.Letter 66
  :beginloop
  /inc %sys.letter 1
  if ( %sys.Letter == 91 ) { goto returnresult }
  set %sys.driveletter $chr(%sys.Letter)
  set %sys.check $disk(%sys.driveletter).free
  if ( $disk(%sys.driveletter).type != fixed ) {
    goto beginloop
  }

  else {
    set %sys.check $disk(%sys.driveletter).size
    set %sys.total.size $calc((%sys.total.size)+(%sys.check))
    set %sys.check $disk(%sys.driveletter).free
    set %sys.total.free $calc((%sys.total.free)+(%sys.check))
    goto beginloop
  }
  :returnresult
  if ( %sys.total.size > 1099511627776 ) {
    set %sys.byteunit TB
    set %sys.divider 1099511627776
  }
  elseif ( %sys.total.size > 2147483648 ) {
    set %sys.byteunit GB
    set %sys.divider 1073741824
  }
  else {
    set %sys.byteunit MB
    set %sys.divider 1048576
  }

  set %sys.total.size $round($calc((%sys.total.size)/%sys.divider),2)
  set %sys.total.free $round($calc((%sys.total.free)/%sys.divider),2)
  :veryend
}

alias -l calcspace2 {
  setupcolours
  .unset %sys.bigstring
  set %sys.Letter 66
  set %sys.spacecount 0
  :beginloop
  inc %sys.letter 1

  if ( %sys.Letter == 91 ) { goto veryend }
  set %sys.driveletter $chr(%sys.Letter)
  set %sys.driveletter $upper(%sys.driveletter)
  set %sys.check $disk(%sys.driveletter).free
  if ( $disk(%sys.driveletter).type != fixed ) {
    goto beginloop
  }
  else {
    if ( $disk(%sys.driveletter).size > 1099511627776 ) {
      set %sys.tempbyteunit TB
      set %sys.tempdivider 1099511627776
    }
    elseif ( $disk(%sys.driveletter).size > 2147483648 ) {
      set %sys.tempbyteunit GB
      set %sys.tempdivider 1073741824
    }
    else {
      set %sys.tempbyteunit MB
      set %sys.tempdivider 1048576
    }
    if ( %sys.spacecount == 0 ) {
      inc %sys.spacecount 1
      set %sys.bigstring %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ T $+ %sys.UnderLineInHeadings $+ otal $+ %sys.sepColourvar $+ / $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ree space on $+ %sys.BoldHeader $+  $+ %sys.UnderLineHeader $+ : %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.driveletter $+ %sys.BoldHeader $+  $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $round($calc(($disk(%sys.driveletter).size)/%sys.tempdivider),2) $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ $round($calc(($disk(%sys.driveletter).free)/%sys.tempdivider),2) $+ %sys.tempbyteunit $+ %sys.UnderLineValue $+ %sys.BoldValue
    }

    else {
      inc %sys.spacecount 1
      set %sys.bigstring %sys.bigstring $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.driveletter $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $round($calc(($disk(%sys.driveletter).size)/%sys.tempdivider),2) $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ $round($calc(($disk(%sys.driveletter).free)/%sys.tempdivider),2) $+ %sys.tempbyteunit $+ %sys.UnderLineValue $+ %sys.BoldValue

      if ( %sys.LimitSpace == 1 ) {
        if ( %sys.spacecount == 5 ) {
          set %sys.bigstring %sys.bigstring Output Limited by user
          goto veryend
        }
      }

    }

  }
  goto beginloop

  :veryend
}

alias -l calcnetspace2 {
  set %sys.total.size 0
  set %sys.total.free 0
  set %sys.Letter 66
  :beginloop
  /inc %sys.letter 1
  if ( %sys.Letter == 91 ) { goto returnresult }
  set %sys.driveletter $chr(%sys.Letter)
  set %sys.check $disk(%sys.driveletter).free
  if ( $disk(%sys.driveletter).type != remote ) {
    goto beginloop
  }

  else {
    set %sys.check $disk(%sys.driveletter).size
    set %sys.total.size $calc((%sys.total.size)+(%sys.check))
    set %sys.check $disk(%sys.driveletter).free
    set %sys.total.free $calc((%sys.total.free)+(%sys.check))
    goto beginloop
  }
  :returnresult
  if ( %sys.total.size > 1099511627776 ) {
    set %sys.byteunit TB
    set %sys.divider 1099511627776
  }
  elseif ( %sys.total.size > 2147483648 ) {
    set %sys.byteunit GB
    set %sys.divider 1073741824
  }
  else {
    set %sys.byteunit MB
    set %sys.divider 1048576
  }

  set %sys.total.size $round($calc((%sys.total.size)/%sys.divider),2)
  set %sys.total.free $round($calc((%sys.total.free)/%sys.divider),2)
  :veryend
}

alias -l calcnetspace {
  setupcolours
  .unset %sys.bigstring
  set %sys.Letter 66
  set %sys.spacecount 0
  :beginloop
  inc %sys.letter 1

  if ( %sys.Letter == 91 ) { goto veryend }
  set %sys.driveletter $chr(%sys.Letter)
  set %sys.driveletter $upper(%sys.driveletter)
  set %sys.check $disk(%sys.driveletter).free
  if ( $disk(%sys.driveletter).type != remote ) {
    goto beginloop
  }
  else {
    if ( $disk(%sys.driveletter).size > 1099511627776 ) {
      set %sys.tempbyteunit TB
      set %sys.tempdivider 1099511627776
    }
    elseif ( $disk(%sys.driveletter).size > 2147483648 ) {
      set %sys.tempbyteunit GB
      set %sys.tempdivider 1073741824
    }
    else {
      set %sys.tempbyteunit MB
      set %sys.tempdivider 1048576
    }
    if ( %sys.spacecount == 0 ) {
      inc %sys.spacecount 1
      set %sys.bigstring %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ T $+ %sys.UnderLineInHeadings $+ otal $+ %sys.sepColourvar $+ / $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ree space on $+ %sys.BoldHeader $+  $+ %sys.UnderLineHeader $+ : %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.driveletter $+ %sys.BoldHeader $+  $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $round($calc(($disk(%sys.driveletter).size)/%sys.tempdivider),2) $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ $round($calc(($disk(%sys.driveletter).free)/%sys.tempdivider),2) $+ %sys.tempbyteunit $+ %sys.UnderLineValue $+ %sys.BoldValue
    }

    else {
      inc %sys.spacecount 1
      set %sys.bigstring %sys.bigstring $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.driveletter $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $round($calc(($disk(%sys.driveletter).size)/%sys.tempdivider),2) $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ $round($calc(($disk(%sys.driveletter).free)/%sys.tempdivider),2) $+ %sys.tempbyteunit $+ %sys.UnderLineValue $+ %sys.BoldValue

      if ( %sys.LimitSpace == 1 ) {
        if ( %sys.spacecount == 5 ) {
          set %sys.bigstring %sys.bigstring Output Limited by user
          goto veryend
        }
      }

    }

  }
  goto beginloop
  :veryend
  if ( %sys.spacecount == 0 ) {
    set %sys.bigstring None Detected
  }
}

alias netspace {
  calcnetspace
  if ( %sys.bigstring == None Detected ) {
    set %sys.output $SIHeader(Network Drives) $SIItemOutput(%sys.bigstring)
  }
  else {
    calcnetspace2
    set %sys.output $SIHeader(Network Drives) $SIItemOutput(%sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ T $+ %sys.UnderLineInHeadings $+ otal $+ %sys.sepColourvar $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ / $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ree $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.total.size $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ %sys.total.free $+ %sys.byteunit $+ %sys.UnderLineValue $+ %sys.BoldValue $SIDelib %sys.bigstring)
  }
  OutputInfo %sys.output
}

alias space {
  setupcolours
  if ( $1 == $null ) {
    calcspace
    calcspace2
    set %sys.output %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ H $+ %sys.UnderLineInHeadings $+ ard Disks $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ : %sys.Underlineenc $+  $+ %sys.encColourVar $+ %sys.Boldenc $+ %sys.encLeftvar $+ %sys.Underlineenc $+ %sys.Boldenc $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ T $+ %sys.UnderLineInHeadings $+ otal $+ %sys.sepColourvar $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ / $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ree $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.total.size $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ %sys.total.free $+ %sys.byteunit $+ %sys.UnderLineValue $+ %sys.BoldValue
    set %sys.output %sys.output $SIDelib %sys.bigstring $+ %sys.Underlineenc $+ %sys.Boldenc $+  $+ %sys.encColourVar $+ %sys.encRightvar $+ %sys.Underlineenc $+ %sys.Boldenc
    OutputInfo %sys.output

  }
  else {

    if (($1 == -c) && ($isfile($2-) == $false)) {
      echo 4*** The -c switch can only be used with Files.
      goto veryend
    }

    if ( $1 == -c ) {
      set %sys.buffer $2-
    }
    else {
      set %sys.buffer $1-
    }

    if ( %sys.buffer == $null ) {
      echo 4*** Syntax is: /space X Where X is a drive letter/directory, or /space PATH Where PATH is the path to a file. (Used with -c switch for CRC.)
      goto veryend
    }

    if ( $len(%sys.buffer) == 1 ) {
      set %sys.buffer %sys.buffer $+ :\
    }



    if (( $isdir(%sys.buffer) == $true ) && ( $dll($scriptdirfsmem.dll,GetVolumeInfo,fstype %sys.buffer) == $null )) {

      set %sys.FolderSize 0
      set %sys.NoOfFilesInFolder $findfile(%sys.buffer,*.*,0)
      set %sys.NoOfSubDirs $finddir(%sys.buffer,*.*,0)
      set %sys.LargestFileSize 0
      unset %sys.LargestFileName
      set %sys.count 0

      while ( %sys.count < %sys.NoOfFilesInFolder ) {
        inc %sys.count 1
        set %sys.FileSize $file($findfile(%sys.buffer,*.*,%sys.count)).size
        set %sys.FolderSize $calc(%sys.FolderSize + %sys.FileSize)

        if ( %sys.FileSize > %sys.LargestFileSize ) {
          set %sys.LargestFileSize %sys.FileSize
          set %sys.LargestFileName $nopath($findfile(%sys.buffer,*.*,%sys.count))
        }
      }

      set %sys.output %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ older Information $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ : %sys.Underlineenc $+  $+ %sys.encColourVar $+ %sys.Boldenc $+ %sys.encLeftvar $+ %sys.Underlineenc $+ %sys.Boldenc $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ older Name $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.buffer $+ %sys.UnderLineValue $+ %sys.BoldValue $SIDelib

      if ( %sys.FolderSize > 1099511627776 ) {
        set %sys.tempbyteunit TB
        set %sys.tempdivider 1099511627776
      }
      elseif ( %sys.FolderSize > 2147483648 ) {
        set %sys.tempbyteunit GB
        set %sys.tempdivider 1073741824
      }
      elseif ( %sys.FolderSize > 1048576 ) {
        set %sys.tempbyteunit MB
        set %sys.tempdivider 1048576
      }
      elseif ( %sys.FolderSize > 1024 ) {
        set %sys.tempbyteunit KB
        set %sys.tempdivider 1024
      }
      else {
        set %sys.tempbyteunit bytes
        set %sys.tempdivider 1
      }

      set %sys.output %sys.output %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ older Size $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $round($calc((%sys.FolderSize)/%sys.tempdivider),2)
      set %sys.output %sys.output $+ %sys.tempbyteunit $+ %sys.UnderLineValue $+ %sys.BoldValue

      set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ iles In Folder $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.NoOfFilesInFolder $+ %sys.UnderLineValue $+ %sys.BoldValue
      set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ S $+ %sys.UnderLineInHeadings $+ ub-Directories In Folder $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.NoOfSubDirs $+ %sys.UnderLineValue $+ %sys.BoldValue
      set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ L $+ %sys.UnderLineInHeadings $+ argest File $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.LargestFileName $+ %sys.UnderLineValue $+ %sys.BoldValue

      if ( %sys.LargestFileSize > 1099511627776 ) {
        set %sys.tempbyteunit TB
        set %sys.tempdivider 1099511627776
      }
      elseif ( %sys.LargestFileSize > 2147483648 ) {
        set %sys.tempbyteunit GB
        set %sys.tempdivider 1073741824
      }
      elseif ( %sys.LargestFileSize > 1048576 ) {
        set %sys.tempbyteunit MB
        set %sys.tempdivider 1048576
      }
      elseif ( %sys.LargestFileSize > 1024 ) {
        set %sys.tempbyteunit KB
        set %sys.tempdivider 1024
      }
      else {
        set %sys.tempbyteunit bytes
        set %sys.tempdivider 1
      }

      set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ L $+ %sys.UnderLineInHeadings $+ argest File Size $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $round($calc((%sys.LargestFileSize)/%sys.tempdivider),2)
      set %sys.output %sys.output $+ %sys.tempbyteunit $+ %sys.UnderLineValue $+ %sys.BoldValue

      set %sys.output %sys.output $+ %sys.Underlineenc $+ %sys.Boldenc $+  $+ %sys.encColourVar $+ %sys.encRightvar




    }

    elseif (( $isfile(%sys.buffer) == $true ) && ( $isdir(%sys.buffer) == $false )) {

      if ( $file(%sys.buffer).size > 1099511627776 ) {
        set %sys.tempbyteunit TB
        set %sys.tempdivider 1099511627776
      }
      elseif ( $file(%sys.buffer).size > 2147483648 ) {
        set %sys.tempbyteunit GB
        set %sys.tempdivider 1073741824
      }
      elseif ( $file(%sys.buffer).size > 1048576 ) {
        set %sys.tempbyteunit MB
        set %sys.tempdivider 1048576
      }
      elseif ( $file(%sys.buffer).size > 1024 ) {
        set %sys.tempbyteunit KB
        set %sys.tempdivider 1024
      }
      else {
        set %sys.tempbyteunit bytes
        set %sys.tempdivider 1
      }


      set %sys.output %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ile Information $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ : %sys.Underlineenc $+  $+ %sys.encColourVar $+ %sys.Boldenc $+ %sys.encLeftvar $+ %sys.Underlineenc $+ %sys.Boldenc $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ile Name $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $nopath(%sys.buffer) $+ %sys.UnderLineValue $+ %sys.BoldValue $SIDelib
      set %sys.output %sys.output %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ile Size $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $round($calc(($file(%sys.buffer).size)/%sys.tempdivider),2)
      set %sys.output %sys.output $+ %sys.tempbyteunit $+ %sys.UnderLineValue $+ %sys.BoldValue
      set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ P $+ %sys.UnderLineInHeadings $+ ath $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $nofile(%sys.buffer) $+ %sys.UnderLineValue $+ %sys.BoldValue
      if ( $1 == -c ) {
        set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ C $+ %sys.UnderLineInHeadings $+ yclic Redundancy Check (CRC) $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $crc(%sys.buffer) $+ %sys.UnderLineValue $+ %sys.BoldValue
      }
      set %sys.output %sys.output $+ %sys.Underlineenc $+ %sys.Boldenc $+  $+ %sys.encColourVar $+ %sys.encRightvar
    }

    elseif (( $dll($scriptdirfsmem.dll,GetVolumeInfo,fstype %sys.buffer) == $null ) && ( $disk(%sys.buffer).type == cdrom )) {
      echo 4*** There is no CD/DVD present in drive %sys.buffer
      goto veryend
    }

    elseif ( $dll($scriptdirfsmem.dll,GetVolumeInfo,fstype %sys.buffer) != $null ) {

      if ( $disk($1).type == remote ) {
        set %sys.DISKTYPETEMP Networked Disk
      }
      elseif ( $disk($1).type == cdrom ) {
        if ( $dll($scriptdirfsmem.dll,GetVolumeInfo,fstype $1 $+ :\) == CDFS ) {
          set %sys.DISKTYPETEMP CDROM
        }
        elseif ( $dll($scriptdirfsmem.dll,GetVolumeInfo,fstype $1 $+ :\) == UDF ) {
          set %sys.DISKTYPETEMP DVDROM
        }
      }
      elseif ( $disk($1).type == fixed ) {
        set %sys.DISKTYPETEMP Local Fixed Disk
      }

      else {
        set %sys.DISKTYPETEMP Unknown
      }

      if ( $disk($1).size > 1099511627776 ) {
        set %sys.tempbyteunit TB
        set %sys.tempdivider 1099511627776
      }
      elseif ( $disk($1).size > 2147483648 ) {
        set %sys.tempbyteunit GB
        set %sys.tempdivider 1073741824
      }
      else {
        set %sys.tempbyteunit MB
        set %sys.tempdivider 1048576
      }

      set %sys.output %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ H $+ %sys.UnderLineInHeadings $+ ard Disks $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ : %sys.Underlineenc $+  $+ %sys.encColourVar $+ %sys.Boldenc $+ %sys.encLeftvar $+ %sys.Underlineenc $+ %sys.Boldenc $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ T $+ %sys.UnderLineInHeadings $+ otal space on $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ : %sys.BoldHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineHeader $+ $upper($1) $+ %sys.BoldHeader $+  $+ %sys.HeadColourVar $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $round($calc(($disk( $+ $1 $+ ).size)/%sys.tempdivider),2) $+ %sys.tempbyteunit $+ %sys.UnderLineValue $+ %sys.BoldValue $SIDelib
      set %sys.output %sys.output %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ree space on $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ : %sys.BoldHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineHeader $+ $upper($1) $+ %sys.BoldHeader $+  $+ %sys.HeadColourVar $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $round($calc(($disk( $+ $1 $+ ).free)/%sys.tempdivider),2)
      set %sys.output %sys.output $+ %sys.tempbyteunit ( $+ $round($calc((($disk( $+ $1 $+ ).size - $disk( $+ $1 $+ ).free)/$disk( $+ $1 $+ ).size)*100),2) $+ % Used) $+ %sys.UnderLineValue $+ %sys.BoldValue
      set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ C $+ %sys.UnderLineInHeadings $+ luster Size $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $si(CLUSTERSIZE,$upper($1)) $+ %sys.UnderLineValue $+ %sys.BoldValue
      set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ile System $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $dll($scriptdirfsmem.dll,GetVolumeInfo,fstype $upper($1) $+ :\) $+ %sys.UnderLineValue $+ %sys.BoldValue
      set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ T $+ %sys.UnderLineInHeadings $+ ype $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.DISKTYPETEMP $+ %sys.UnderLineValue $+ %sys.BoldValue
      set %sys.output %sys.output $SIDelib %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ L $+ %sys.UnderLineInHeadings $+ abel $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ $disk($1).label $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.Underlineenc $+ %sys.Boldenc $+  $+ %sys.encColourVar $+ %sys.encRightvar
    }

    else {
      echo 4*** Syntax is: /space X Where X is a drive letter/directory, or /space PATH Where PATH is the path to a file. (Used with -c switch for CRC.)
      goto veryend
    }

    OutputInfo %sys.output
  }


  :veryend
}

alias osinfo {

  setupcolours
  DoUptimeStuff

  OutputInfo $SIHeader(Operating System) $SIItemOutput($SI(os)) $SIDelib $SIHeader(Installed) $SIItemOutput($OSInstalledOn) $SIDelib $SIHeader(Uptime) $SIItemOutput(%sys.UptimeOutput)

}


alias up {

  if ( $1 == DoUptimeStuffOnly ) {

    DoUptimeStuff
    goto veryend
  }

  DoUptimeStuff
  setupcolours
  OutputInfo $SIHeader(Operating System) $SIItemOutput($SI(OS)) $SIDelib $SIHeader(Uptime) $SIItemOutput(%sys.UptimeOutput) $SIDelib $SIHeader(Record Uptime) $SIItemOutput(%sys.RecordUptime)

  :veryend
}



alias conn {
  setupcolours
  OutputInfo $SIHeader(Connection) $SIItemOutput(%sys.ConnectionBuffer)
}

alias ni {
  if ( $1 == -change ) {
    $de(change_adapter)
  }
  else {
    setupcolours
    OutputInfo $SIHeader(Network %sys.UnderLineInHeadings $+ I $+ %sys.UnderLineInHeadings $+ nterfaces $+ %sys.UnderLineHeader)  $SIItemOutput($si(NI))
  }
}

alias bw {
  setupcolours
  OutputInfo $SIHeader(Bandwidth) $SIItemOutput(Current Downstream: $si(BWD) $+ kb/s $SIDelib  $+ %sys.ValueColourVar $+ Current Upstream: $si(BWU) $+ kb/s)
}

alias meminfo {
  set %sys.rb_size 10
  setupcolours
  OutputInfo $SIHeader(Memory Usage) $SIItemOutput($dll($scriptdirmoo.dll,meminfo,_)) $SIDelib $rambar $SIDelib $SIHeader(Virtual Memory) $SIItemOutput($virtualmem) $SIDelib $vmembar $SIDelib $SIHeader(Page File) $SIItemOutput($pagefile) $SIDelib $pagebar

}

alias pageinfo {
  set %sys.rb_size 50
  setupcolours
  OutputInfo $SIHeader(Page File) $SIItemOutput($pagefile) $SIDelib $pagebar
}

alias raminfo {
  set %sys.rb_size 50
  setupcolours
  OutputInfo $SIHeader(Memory Usage) $SIItemOutput($dll($scriptdirmoo.dll,meminfo,_)) $SIDelib $rambar
}

alias vinfo {
  set %sys.rb_size 50
  setupcolours
  OutputInfo $SIHeader(Virtual Memory) $SIItemOutput($virtualmem) $SIDelib $vmembar
}

alias -l pagefile {

  ;Set %sys.count 66
  ;set %sys.totalpage 0

  ;while ( %sys.count < 90 ) {
  ;inc %sys.count 1
  ;if (($disk($chr(%sys.count)).type == fixed ) && ($file($eval($chr(%sys.count) $+ :\pagefile.sys,1)).size != $null)) {
  ;set %sys.totalpage $calc(%sys.totalpage + $file($eval($chr(%sys.count) $+ :\pagefile.sys)).size)
  ;}
  ;}


  set %sys.totalpage $dll($scriptdirfsmem.dll,GetMemInfo,totalpagefile)
  set %sys.freepage $dll($scriptdirfsmem.dll,GetMemInfo,freepagefile)
  set %sys.buffer Usage: $round($calc((%sys.totalpage - %sys.freepage)/1048576),0) $+ / $+ $round($calc( %sys.totalpage / 1048576 ),0) $+ MB ( $+ $round($calc(( (%sys.totalpage - %sys.freepage) / %sys.totalpage ) * 100),2) $+ $eval(%,0) $+ )
  return %sys.buffer
}

alias -l pagebar {
  if ( %sys.rb_size == 0 ) { set %sys.rb_size 10 }
  set %sys.rb_used $round($calc((( (%sys.totalpage - %sys.freepage) / %sys.totalpage ) * 100 ) / 100 * %sys.rb_size),0)
  set %sys.check $round(( (%sys.totalpage - %sys.freepage) / %sys.totalpage ),0)
  if ( %sys.check <= 33 ) {
    set %sys.check1 9|
    goto gogogo
  }
  if ( %sys.check <= 66 ) {
    set %sys.check1 7|
    goto gogogo
  }
  if ( %sys.check > 66 ) {
    set %sys.check1 4|
    goto gogogo
  }
  :gogogo
  set %sys.rb_unused $round($calc(%sys.rb_size - %sys.rb_used),0)
  set %sys.rb_usedstr $str(%sys.check1,%sys.rb_used)
  set %sys.rb_unusedstr $str(-,%sys.rb_unused)
  return %sys.Underlineenc $+  $+ %sys.encColourVar $+ %sys.Boldenc $+ %sys.encLeftvar $+ %sys.Underlineenc $+ %sys.Boldenc $+ %sys.rb_usedstr $+  $+ %sys.rb_unusedstr $+ %sys.Underlineenc $+ %sys.Boldenc $+  $+ %sys.encColourVar $+ %sys.encRightvar $+ %sys.Underlineenc $+ %sys.Boldenc
}

alias -l virtualmem {
  set %sys.totalvirt $dll($scriptdirfsmem.dll,GetMemInfo,totalvirtual)
  set %sys.freevirt $dll($scriptdirfsmem.dll,GetMemInfo,freevirtual)
  set %sys.buffer Usage: $round($calc((%sys.totalvirt - %sys.freevirt)/1048576),0) $+ / $+ $round($calc( %sys.totalvirt / 1048576 ),0) $+ MB ( $+ $round($calc(( (%sys.totalvirt - %sys.freevirt) / %sys.totalvirt ) * 100),2) $+ $eval(%,0) $+ )
  return %sys.buffer
}

alias -l vmembar {
  if ( %sys.rb_size == 0 ) { set %sys.rb_size 10 }
  set %sys.rb_used $round($calc((( (%sys.totalvirt - %sys.freevirt) / %sys.totalvirt ) * 100 ) / 100 * %sys.rb_size),0)
  set %sys.check $round(( (%sys.totalvirt - %sys.freevirt) / %sys.totalvirt ),0)
  if ( %sys.check <= 33 ) {
    set %sys.check1 9|
    goto gogogo
  }
  if ( %sys.check <= 66 ) {
    set %sys.check1 7|
    goto gogogo
  }
  if ( %sys.check > 66 ) {
    set %sys.check1 4|
    goto gogogo
  }
  :gogogo
  set %sys.rb_unused $round($calc(%sys.rb_size - %sys.rb_used),0)
  set %sys.rb_usedstr $str(%sys.check1,%sys.rb_used)
  set %sys.rb_unusedstr $str(-,%sys.rb_unused)
  return $SIItemOutput(%sys.rb_usedstr $+  $+ %sys.rb_unusedstr)

}

alias cpuinfo {
  setupcolours
  OutputInfo $SIHeader(CPU Info) $SIItemOutput($si(cpu))
}

alias stats {
  setupcolours
  set %sys.rb_size 10


  DoUptimeStuff

  rambar
  calcspace
  OutputInfo $SIHeader(OS) $+ $SIItemOutput($si(os)) $SIDelib $SIHeader(Up) $+ $SIItemOutput(%sys.UptimeOutput) $SIDelib $SIHeader(CPU) $+ $SIItemOutput($si(cpu)) $SIDelib $SIHeader(Mem) $+ $SIItemOutput($dll($scriptdirmoo.dll,meminfo,_) $SIDelib $result) $SIDelib $SIHeader(HD) $+ $SIItemOutput(%sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ T $+ %sys.UnderLineInHeadings $+ otal/ $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ree $+ %sys.UnderLineHeader $+ %sys.BoldHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.total.size $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ %sys.total.free $+ %sys.byteunit)
}

alias info {
  set %sys.chan #
  setupcolours
  set %sys.rb_size 30
  rambar

  DoUptimeStuff

  OutputInfo $SIHeader(Operating System) $SIItemOutput($si(os)) $SIDelib $SIHeader(Uptime) $SIItemOutput(%sys.UptimeOutput) $SIDelib $SIHeader(Record) $SIItemOutput(%sys.RecordUptime)
  set %sys.output $SIHeader(Memory Usage) $SIItemOutput($dll($scriptdirmoo.dll,meminfo,_) $SIDelib $result) $SIDelib $SIHeader(Display Info) $SIItemOutput($dll($scriptdirmoo.dll,screeninfo,_)) $SIDelib $SIHeader(Monitor) $SIItemOutput(%sys.monitor)
  if ( %sys.infodelay == 0 ) {
    OutputInfo %sys.output
  }
  else {
    if ( %sys.removeALLformatting == 1 ) {
      set %sys.infobuffer1 $strip(%sys.output,burc)
    }
    else {
      set %sys.infobuffer1 %sys.output
    }
    set %sys.delaybuffer %sys.infodelay
    .timer 1 %sys.delaybuffer msg %sys.chan %sys.infobuffer1 | unset %sys.infobuffer1
  }


  getmbm5info
  set %sys.output $SIHeader(CPU Info) $SIItemOutput($SI(CPU)) $SIDelib $SIHeader(Temperature) $SIItemOutput($result)
  if ( %sys.infodelay == 0 ) {
    OutputInfo %sys.output
  }
  else {
    if ( %sys.removeALLformatting == 1 ) {
      set %sys.infobuffer2 $strip(%sys.output,burc)
    }
    else {
      set %sys.infobuffer2 %sys.output
    }
    set %sys.delaybuffer $calc(%sys.delaybuffer + %sys.infodelay)
    .timer 1 %sys.delaybuffer msg %sys.chan %sys.infobuffer2 | unset %sys.infobuffer2
  }

  calcspace
  calcspace2

  set %sys.output $SIHeader(Hard Disks) $SIItemOutput(%sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ T $+ %sys.UnderLineInHeadings $+ otal $+ %sys.sepColourvar $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ / $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+  $+ %sys.HeadColourVar $+ %sys.UnderLineInHeadings $+ F $+ %sys.UnderLineInHeadings $+ ree $+ %sys.BoldHeader $+ %sys.UnderLineHeader $+ :  $+ %sys.ValueColourVar $+ %sys.UnderLineValue $+ %sys.BoldValue $+ %sys.total.size $+  $+ %sys.sepColourvar $+ / $+ %sys.ValueColourVar $+ %sys.total.free $+ %sys.byteunit $+ %sys.UnderLineValue $+ %sys.BoldValue $SIDelib %sys.bigstring)

  if ( %sys.infodelay == 0 ) {
    OutputInfo %sys.output
  }
  else {
    if ( %sys.removeALLformatting == 1 ) {
      set %sys.infobuffer3 $strip(%sys.output,burc)
    }
    else {
      set %sys.infobuffer3 %sys.output
    }
    set %sys.delaybuffer $calc(%sys.delaybuffer + %sys.infodelay)
    .timer 1 %sys.delaybuffer msg %sys.chan %sys.infobuffer3 | unset %sys.infobuffer3
  }

  set %sys.output $SIHeader(Connection/ $+ %sys.UnderLineInHeadings $+ N $+ %sys.UnderLineInHeadings $+ etwork %sys.UnderLineInHeadings $+ I $+ %sys.UnderLineInHeadings $+ nterfaces) $SIItemOutput($SI(NI))
  if ( %sys.infodelay == 0 ) {
    OutputInfo %sys.output
  }
  else {
    if ( %sys.removeALLformatting == 1 ) {
      set %sys.infobuffer4 $strip(%sys.output,burc)
    }
    else {
      set %sys.infobuffer4 %sys.output
    }
    set %sys.delaybuffer $calc(%sys.delaybuffer + %sys.infodelay)
    .timer 1 %sys.delaybuffer msg %sys.chan %sys.infobuffer4 | unset %sys.infobuffer4
  }

}

alias temp {
  setupcolours
  getmbm5info
  OutputInfo $SIHeader(Temperature) $SIItemOutput($result)
}

alias volts {
  setupcolours
  OutputInfo $SIHeader(Voltages) $SIItemOutput($getmbm5info(voltages))
}

alias -l rambar {
  if ( %sys.rb_size == 0 ) { set %sys.rb_size 10 }
  set %sys.rb_used $round($calc($dll($scriptdirmoo.dll,rambar,_) / 100 * %sys.rb_size),0)
  set %sys.check $round($dll($scriptdirmoo.dll,rambar,_),0)
  if ( %sys.check <= 33 ) {
    set %sys.check1 9|
    goto gogogo
  }
  if ( %sys.check <= 66 ) {
    set %sys.check1 7|
    goto gogogo
  }
  if ( %sys.check > 66 ) {
    set %sys.check1 4|
    goto gogogo
  }
  :gogogo
  set %sys.rb_unused $round($calc(%sys.rb_size - %sys.rb_used),0)
  set %sys.rb_usedstr $str(%sys.check1,%sys.rb_used)
  set %sys.rb_unusedstr $str(-,%sys.rb_unused)
  return $SIItemOutput(%sys.rb_usedstr $+  $+ %sys.rb_unusedstr)
}

alias -l CharFilter {
  set %sys.temp $replace($1-,$chr(44),$chr(46))
  while ( $right(%sys.temp,1) !isnum ) {
    set %sys.temp $left(%sys.temp,$calc($len(%sys.temp) - 1))
  }
  return %sys.temp
}

alias -l JustName {
  set %sys.temp $1-
  set %sys.temp $left(%sys.temp,$calc($len(%sys.temp) - ($len(%sys.temp) - $pos(%sys.temp,:,1)) - 1))
  return %sys.temp
}

alias -l JustTemperature {
  set %sys.temp $1-
  set %sys.temp $right(%sys.temp,$calc($len(%sys.temp) - $pos(%sys.temp,:,1) - 1))
  set %sys.temp $replace(%sys.temp,$chr(32),$chr(44))
  return $gettok(%sys.temp,1,44)
}

alias -l ConvertToFahr {
  set %sys.temp $round($calc(($1 * 9)/5 + 32),0)
  return %sys.temp
}

alias getmbm5info {
  unset %sys.mbm5_output
  if ( %sys.TurnOffMBM == 1 ) {
    return Deactivated by user
    goto veryend
  }

  if ( $dll($scriptdirmbminfo.dll,wert,0) == 0 ) {
    return MBM not loaded
    goto veryend
  }

  if ( $1 == MBMVersion ) {
    return $remove($dll($scriptdirmbminfo.dll,wert,-1),Version: )
    goto veryend
  }

  if ( $1 == voltages ) {

    set %sys.count 31
    while ( %sys.count < 47 ) {
      inc %sys.count 1
      set %sys.buffer2 $CharFilter($dll($scriptdirmbminfo.dll,wert,%sys.count))
      if ( $JustTemperature(%sys.buffer2) != 255 ) {
        set %sys.buffer $JustTemperature($CharFilter(%sys.buffer2))
        set %sys.buffer $replace(%sys.buffer,$chr(44),$chr(46))
        set %sys.buffer $round(%sys.buffer,3)

        if ( %sys.count == 32 ) {
          set %sys.mbm5_output $JustName(%sys.buffer2) $+ : %sys.buffer $+ V
        }
        else {
          set %sys.mbm5_output %sys.mbm5_output $+ , $JustName(%sys.buffer2) $+ : %sys.buffer $+ V
        }
      }
    }
    return %sys.mbm5_output
    goto veryend
  }

  set %sys.count -1
  while ( %sys.count < 31 ) {
    inc %sys.count 1
    set %sys.buffer $CharFilter($dll($scriptdirmbminfo.dll,wert,%sys.count))
    if ( $JustTemperature(%sys.buffer) != 255 ) {
      if ( %sys.TemperatureUnit == C ) {
        if ( %sys.count == 0 ) {
          set %sys.mbm5_output $JustName(%sys.buffer) $+ : $JustTemperature(%sys.buffer) $+ °C
        }
        else {
          set %sys.mbm5_output %sys.mbm5_output $+ , $JustName(%sys.buffer) $+ : $JustTemperature(%sys.buffer) $+ °C
        }
      }
      elseif ( %sys.TemperatureUnit == BOTH ) {
        if ( %sys.count == 0 ) {
          set %sys.mbm5_output $JustName(%sys.buffer) $+ : $JustTemperature(%sys.buffer) $+ °C/ $+ $ConvertToFahr($JustTemperature(%sys.buffer)) $+ °F
        }
        else {
          set %sys.mbm5_output %sys.mbm5_output $+ , $JustName(%sys.buffer) $+ : $JustTemperature(%sys.buffer) $+ °C/ $+ $ConvertToFahr($JustTemperature(%sys.buffer)) $+ °F
        }
      }
      else {
        if ( %sys.count == 0 ) {
          set %sys.mbm5_output $JustName(%sys.buffer) $+ : $ConvertToFahr($JustTemperature(%sys.buffer)) $+ °F
        }
        else {
          set %sys.mbm5_output %sys.mbm5_output $+ , $JustName(%sys.buffer) $+ : $ConvertToFahr($JustTemperature(%sys.buffer)) $+ °F
        }
      }
    }
  }

  set %sys.count 47
  while ( %sys.count < 63 ) {
    inc %sys.count 1
    set %sys.buffer $CharFilter($dll($scriptdirmbminfo.dll,wert,%sys.count))
    if ( $JustTemperature(%sys.buffer) != 255 ) {
      set %sys.mbm5_output %sys.mbm5_output $+ , $JustName(%sys.buffer) $+ : $JustTemperature(%sys.buffer) $+ RPM
    }
  }

  if ( %sys.mbm5_output == $null ) {
    return MBM not configured properly
  }
  else {
    return %sys.mbm5_output
  }

  :veryend
}

alias uninstallSystemInfo {
  /dialog -m unloadalert unloadalert
}

alias reinstallSystemInfo { 
  .timer 1 1 /syssetup | /reload -rs " $+ $script $+ "
}

alias SystemInfoHelp {
  run " $+ $scriptdir $+ SystemInfoHelp\Index.html $+ "
}

alias debugSystemInfo {

  echo SystemInfo by C}{$ %sys.version $+ : $crc($script) $dll($scriptdirmoo.dll,version,_) $si(os) $version

}

menu channel {
  SystemInfo
  .Setup (/syssetup):/syssetup
  .SystemInfo (/systeminfo):/systeminfo
  .Check for updates...:/siupdatecheck
  .-
  .Custom Line (/cust):/cust
  .Intelligent Custom Line (/icust):/icust
  .Info (/info):/Info
  .Stats (/stats):/stats
  .OS Information (/osinfo):/osinfo
  .Uptime (/up):/up
  .CPU (/cpuinfo):/cpuinfo
  .Temperature (/temp):/temp
  .Voltages (/volts):/volts
  .Memory Usage (/meminfo):/meminfo
  .RAM Info (/raminfo):/raminfo
  .Virtual Memory (/vinfo):/vinfo
  .Page File (/pageinfo):/pageinfo
  .Network Drives (/netspace):/netspace
  .Hard Disk(s) (/space):/space
  .Drive Info (/space LETTER):/space $?="Please enter a drive letter:"
  .Folder Information (/space DIR):/space $sdir($mircdir,Choose a folder...,OK)
  .File Information (/space PATH):/space $sfile($mircdir,Choose a file...,OK)
  .File Info with CRC (/space -c PATH):/space -c $sfile($mircdir,Choose a file...,OK)
  .Display (/display):/display
  .Peripherals (/periph):/periph
  .Connection (/conn):/conn
  .Network Interfaces (/ni):/ni
  .Change NIC (/ni -change):/ni -change
  .Bandwidth (/bw):/bw
  .Client (/client):/client
  .-
  .About...:.syssetup | .timer 1 0.25 did -c syssetup 107
  .Reload Script:/reinstallSystemInfo
  .Completely Unload:/uninstallSystemInfo
}

menu nicklist {
  SystemInfo
  .Setup (/syssetup):/syssetup
  .SystemInfo (/systeminfo):/systeminfo
  .Check for updates...:/siupdatecheck
  .-
  .RemoteStats
  ..Stats + Version:ctcp $1 SYSTEMINFO
  ..Stats:ctcp $1 SYSTEMINFO STATS
  ..Operating System:ctcp $1 SYSTEMINFO OS
  ..Uptime:ctcp $1 SYSTEMINFO UPTIME
  ..Record Uptime:ctcp $1 SYSTEMINFO RECORDUP
  ..CPU Info:ctcp $1 SYSTEMINFO CPUINFO
  ..MBM Info:ctcp $1 SYSTEMINFO TEMP
  ..Memory Usage:ctcp $1 SYSTEMINFO MEMINFO
  ..Page File Info:ctcp $1 SYSTEMINFO PAGEINFO
  ..Virtual Memory Info:ctcp $1 SYSTEMINFO VMEMINFO
  ..Hard Disks:ctcp $1 SYSTEMINFO HD
  ..Display Info:ctcp $1 SYSTEMINFO DISPLAY
  ..Monitor:ctcp $1 SYSTEMINFO MONITOR
  ..Graphics Card:ctcp $1 SYSTEMINFO GFXCARD
  ..Sound card:ctcp $1 SYSTEMINFO SNDCARD
  ..Connection:ctcp $1 SYSTEMINFO CONN
  ..Network Interfaces:ctcp $1 SYSTEMINFO NI
  ..Bandwidth:ctcp $1 SYSTEMINFO BW
  .-
  .About...:.syssetup | .timer 1 0.25 did -c syssetup 107
  .Reload Script:/reinstallSystemInfo
  .Completely Unload:/dialog -m unloadalert unloadalert
}
#menusysteminfo off
menu status,menubar {
  SystemInfo
  .Setup (/syssetup):/syssetup
  .SystemInfo (/systeminfo):/systeminfo
  .Check for updates...:/siupdatecheck
  .-
  .About...:.syssetup | .timer 1 0.25 did -c syssetup 107
  .Reload Script:/reinstallSystemInfo
  .Completely Unload:/dialog -m unloadalert unloadalert
}

menu query {
  SystemInfo
  .Setup (/syssetup):/syssetup
  .SystemInfo (/systeminfo):/systeminfo
  .Check for updates...:/siupdatecheck
  .-
  .RemoteStats
  ..Stats + Version:ctcp $1 SYSTEMINFO
  ..Stats:ctcp $1 SYSTEMINFO STATS
  ..Operating System:ctcp $1 SYSTEMINFO OS
  ..Uptime:ctcp $1 SYSTEMINFO UPTIME
  ..Record Uptime:ctcp $1 SYSTEMINFO RECORDUP
  ..CPU Info:ctcp $1 SYSTEMINFO CPUINFO
  ..MBM Info:ctcp $1 SYSTEMINFO TEMP
  ..Memory Usage:ctcp $1 SYSTEMINFO MEMINFO
  ..Page File Info:ctcp $1 SYSTEMINFO PAGEINFO
  ..Virtual Memory Info:ctcp $1 SYSTEMINFO VMEMINFO
  ..Hard Disks:ctcp $1 SYSTEMINFO HD
  ..Display Info:ctcp $1 SYSTEMINFO DISPLAY
  ..Monitor:ctcp $1 SYSTEMINFO MONITOR
  ..Graphics Card:ctcp $1 SYSTEMINFO GFXCARD
  ..Sound card:ctcp $1 SYSTEMINFO SNDCARD
  ..Connection:ctcp $1 SYSTEMINFO CONN
  ..Network Interfaces:ctcp $1 SYSTEMINFO NI
  ..Bandwidth:ctcp $1 SYSTEMINFO BW
  .-
  .Custom Line (/cust):/cust
  .Intelligent Custom Line (/icust):/icust
  .Info (/info):/Info
  .Stats (/stats):/stats
  .OS Information (/osinfo):/osinfo
  .Uptime (/up):/up
  .CPU (/cpuinfo):/cpuinfo
  .Temperature (/temp):/temp
  .Voltages (/volts):/volts
  .Memory Usage (/meminfo):/meminfo
  .RAM Info (/raminfo):/raminfo
  .Virtual Memory (/vinfo):/vinfo
  .Page File (/pageinfo):/pageinfo
  .Network Drives (/netspace):/netspace
  .Hard Disk(s) (/space):/space
  .Drive Info (/space LETTER):/space $?*!="Please enter a drive letter:"
  .Folder Information (/space DIR):/space $sdir($mircdir,Choose a folder...,OK)
  .File Information (/space PATH):/space $sfile($mircdir,Choose a file...,OK)
  .File Info with CRC (/space -c PATH):/space -c $sfile($mircdir,Choose a file...,OK)
  .Display (/display):/display
  .Peripherals (/periph):/periph
  .Connection (/conn):/conn
  .Network Interfaces (/ni):/ni
  .Change NIC (/ni -change):/ni -change
  .Bandwidth (/bw):/bw
  .Client (/client):/client
  .-
  .About...:.syssetup | .timer 1 0.25 did -c syssetup 107
  .Reload Script:/reinstallSystemInfo
  .Completely Unload:/uninstallSystemInfo
}

menu @SystemInfo {
  SystemInfo
  .Setup (/syssetup):/syssetup
  .SystemInfo (/systeminfo):/systeminfo
  .Check for updates...:/siupdatecheck
  .-
  .Change NIC (/ni -change):/ni -change
  .-
  .About...:.syssetup | .timer 1 0.25 did -c syssetup 107
  .Reload Script:/reinstallSystemInfo
  .Completely Unload:/dialog -m unloadalert unloadalert
  .-
  .Close this window:window -c @SystemInfo
}
#menusysteminfo end

;CopyRight WiggleSoft 2001 :P
