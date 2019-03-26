---
title : "Schneller mit dem Terminal arbeiten"
categories : "Produktivität"
---
Dieses Kapitel hilft Dir schneller mit dem Terminal zu arbeiten. Du lernst, wie Du bereits eingebene Befehle schnell wiederfindest, wie Du im Terminal den
Cursor schneller positionierst und wie Du Befehle automatisch vervollständigst.

Dieses Kapitel hilft Dir schneller mit dem Terminal zu arbeiten. Du
lernst, wie Du bereits eingebene Befehle schnell wiederfindest, wie Du
im Terminal den Cursor schneller positionierst und wie Du Befehle
automatisch vervollständigst.

# Alte Befehle mit kbd:\[ctrl + r\] finden

Hast Du bereits Befehle in das Terminal getippt, kannst Du die alten
Befehle über die Rauf- und Runter-Cursor-Tasten wiederfinden. Das kann
schnell aber in lästiges Suchen ausarten. Dafür gibt es eine hilfreiche
Alternative: Die Tastenkombination kbd:\[ctrl +r\]-

Bevor Du einen beliebigen Text eingibst, drückst Du zuerst kbd:\[ctrl +
r\]. Sofort ändert sich die Eingabeaufforderung und
\`(reverse-i-search)’: \` erscheint. Jetzt tippst Du einfach einen
beliebigen Teil eines bereits vorher eingegebenen Befehls und das
Terminal sucht den Befehl in der Historie.

Sollte das nicht der Fall sein, drückst Du kbd:\[ctrl + r\] erneut, um
inkrementell zu suchen. Wenn Sie beispielsweise nach `sips -p 200 200
bild-1600x900.jpg` suchst, dann gibst Du einfach `sips`. Hast Du mehrere
sips-Befehle bereits eingegeben, durchsuchst Du alle Befehle die zur
Suche passen, indem Du erneut kbd:\[ctrl + r\] drückst. Sobald Du den
gewünschten Befehl gefunden hast, drückst Du die Eingabetaste, um ihn
auszuführen, oder Du bewegst den Cursor nach links bzw. rechts, um den
Befehl zuerst noch zu ändern. Wie in den meisten Fällen auch, kannst Du
die Suche mit kbd:\[ctrl + c\] abbrechen.

In den meisten Fällen ist Dein Verlauf wahrscheinlich so eingestellt,
dass er auch Duplikate von Befehlen aufzeichnet. Das ist nervig. Um
sicherzustellen, dass der Verlauf nicht mit doppelten Einträgen
überschwemmt wird, fügst Du in die Datei *.bashrc* oder *.bashprofile*
die folgende Zeile ein. Wie Du die Datei *.bashprofile* findest, liest
Du im Kapitel zum Thema *.bashprofile*.

    export HISTCONTROL=ignoreboth:erasedups

# Bewege Deinen Cursor wie ein Ninja in der Befehlszeile

Du siehst, man braucht nicht unbedingt die Nach-Oben und
Nach-Unten-Pfeiltasten. Was ist aber mit links und rechts? Leider sind
diese Tasten noch für einzelne Bewegungen erforderlich. Sind die Befehle
lange, wird es wieder nervig. Hier sind einige Tastenkombinationen, um
den Cursor ein wenig effizienter zu
bewegen.

| Tastaturkürzel   | Erklärung                                           |
| ---------------- | --------------------------------------------------- |
| kbd:\[ctrl - a\] | Bewege den Cursor an den Anfang der aktuellen Zeile |
| kbd:\[ctrl - e\] | Bewege den Cursor an das Ende der aktuellen Zeile   |
| kbd:\[alt - b\]  | Bewege den Cursor ein Wort nach hinten              |
| kbd:\[alt - f\]  | Bewege den Cursor ein Wort vorwärts                 |
| kbd:\[ctrl - k\] | vom Cursor zum Zeilenende löschen                   |
| kbd:\[ctrl - u\] | vom Cursor zum Zeilenanfang löschen                 |
| kbd:\[alt - d\]  | lösche das Wort vor dem Cursor                      |
| kbd:\[ctrl - w\] | lösche das Wort hinter dem Cursor                   |

# Cursor mit der Maus positionieren

Um schnell an eine Stelle eines Befehls im Terminal zu springen hält man
die alt-Taste fest und klickt an die Stelle mit der Maus.

# Springen zum Anfang und Ende einer Zeile

Zum Anfang der Zeile springt man mit ctrl + a und mit CTRL + e zum Ende.

# Um die Zeile sofort zu löschen…

…klickt man ctrl + u.

# Pfeiltasten rauf und runter

Die Rauf- und Runterpfeiltasten wechseln zwischen den zuletzt
eingetippten Befehlen

# Autovervollständigen mit der Tabulatortaste

Um schneller in Verzeichnisse zu springen, tippt man cd und dann die
Anfangsbuchstaben des Verzeichnisses und mittendrin die Tabulatortaste.
Das Terminal vervollständigt automatisch die Eingabe, sofern nicht
mehrere Verzeichnisse mit der gleichen Zeichenfolge existieren.
