MyFileWrite_Command:
  type: command
  name: myfilewrite
  permission: denizen.filewrite
  script:
    - ~filewrite path:data/myfile.dat data:<element[Hello].utf8_encode>
    - narrate "Die Datei 'myfile.dat' wurde erfolgreich erstellt und mit 'Hello' beschrieben."