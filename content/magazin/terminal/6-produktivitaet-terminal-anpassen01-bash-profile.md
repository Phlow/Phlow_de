---
title:  "Was ist .bash\_profile? Und wie nutze und editiere ich es?"
categories : "Produktivität"
---
Diese Anleitung erklärt Dir, was *.bash\_profile* ist und wie Du es auf
dem Mac bearbeiten kannst.

Es befindet sich eine versteckte Datei in Deinem Mac-Benutzerverzeichnis
mit dem Namen `.bash_profile`. Diese Datei wird geladen, bevor das
Terminal Deine Shell-Umgebung lädt. Die `.bash_profile`-Datei enthält
Deine individuelle Startkonfiguration und -vorgaben für Deine
Befehlszeilenschnittstelle.

Diese Startkonfiguration kannst Du auf Wunsch verändern. So kannst Du
z.B. die Terminal-Eingabeaufforderung ändern, die Farben des Textes,
oder Du kannst Aliase für Funktionen festlegen. Besonders Aliase sparen
Dir sehr viel Zeit.

So kannst Du zum Beispiel das Alias `desk` in Deinem `.bash_profile`
festlegen, und immer wenn Du `desk` eintippst, wird ein Befehl oder eine
Befehlskette ausgeführt. Bei mir lande ich dann automatisch auf meinem
Desktop, anstelle z.B. `cd Desktop/` einzutippen.

# .bash\_profile editieren

1.  Starte das Terminal.

2.  Die Datei `.bash_profile` befindet sich in Deinem Nutzerverzeichnis,
    bei mir unter `/Users/moritz`.

3.  Öffne mit `open .bash_profile` das Dokument. Wahrscheinlich öffnet
    sich automatisch Textedit. Wenn nicht musst Du die Datei erstellen.

4.  Jetzt kannst Du Dein *.bash\_profile* bearbeiten.

5.  Um die neuen Einstellungen zu aktivieren, musst Du `source
    .bash_profile` in das Terminal eingeben.

**Weitere Quellen zum Thema**

My Mac OSX Bash
Profile::https://natelandau.com/my-mac-osx-bash\_profile/
