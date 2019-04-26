---
title:  Inhalte ausgeben mit dem echo-Befehl
chapter         : 2
categories : "Ordner und Dateien"
description : 'Mit echo gibst Du in
der Bash Informationen aus. Der `echo`-Befehl ist simpel. Komplizierter
wird es mit Umbrüchen, Farben und Steuerzeichen.'
slug        : echo
---
Mit `echo` gibt man in der Bash Informationen aus. Der `echo`-Befehl ist
eigentlich simpel. Komplizierter wird es mit Umbrüchen, Farben und
Steuerzeichen. An dieser Stelle erkläre ich Dir ausführlich, wie `echo`
richtig funktioniert.
<!-- readmore -->

{{< toc >}}

Um Text im Terminal auszugeben, gibt es drei verschiedene Befehle bzw.
Programme: `echo`, `printf` und `tput`. Das komplexeste Werkzeug ist
`tput`.

`tput` kannst Du z.B. dazu verwenden, um den Cursor auf dem
Bildschirm zu bewegen oder Informationen über den Status des Terminals
abzurufen bzw. zurückzusetzen. Dahingegen geben `echo` und `printf` nur
Texte aus. An dieser Stelle setzen wir uns erst einmal nur mit `echo`
auseinander.

## Text und Informationen mit echo ausgeben

Mit `echo` kannst Du Text und den Inhalt von Variablen ausgeben. Um
»Hallo Welt« zu schreiben, genügt…

    $ echo Hallo Welt
    Hallo Welt

Besser – denn es beugt Fehlern vor – ist es, den Text in
Anführungszeichen zu setzen.

    $ echo "Hallo Welt"
    Hallo Welt

Variablen gibst Du einfach aus, indem Du den Namen der Variablen
eingibst. So kannst Du z.B. mit der Variablen `PWD` Dein
aktuelles Arbeitsverzeichnis ausgeben:

    $ echo $PWD
    /Users/moritz/Desktop

Du kannst auch die Ausgabe von Variablen mit Text kombinieren.

    $ echo "Du bist in diesem Verzeichnis: $PWD."
    Du bist in diesem Verzeichnis: /Users/moritz/Desktop.

Kombinierst Du die Ausgabe von Text und Variablen, ist es sicherer die Variable mit geschweiften Klammern einzuklammern. Das verhindert, dass Zeichen, die direkt hinter der Variable folgen, als Variablennamen interpretiert werden. Warum das wichtig ist, wird klar, wenn Du z.B. die Textfarbe in einer Variable speicherst und dann im Text aufrufst.

Hier ein Beispiel, wie es nicht funktioniert:

    $ rot="\033[31m" 
    $ echo "$rotRoter Text" 
    text 

1. Die Variable `$rot` bekommt ein Steuerzeichen für die Farbe rot übergeben.
2. `echo` gibt an dieser Stelle aber nicht die Variable `$rot`, sondern die Variable `$rotRoter` aus.
3. Das Ergebnis lautet dann, `text`, weil in unserem Beispiel die Variable `$rotRoter` nicht existiert.

Damit die Variable `$rot` genutzt werden kann, musst Du sie deshalb in
geschweiften Klammern schreiben, so `${rot}`. Um das obige Beispiel
korrekt umzusetzen, musst Du also folgendes ins Terminal eingeben.

    $ rot="\033[31m"
    $ echo -e "${rot}Roter Text"
    Roter Text

Sicherlich ist Dir die zusätzliche Option `-e` aufgefallen. Diese Option
schaltet die Verwendung von Steuerzeichen ein.

## `echo` und die Steuerzeichen

Steuerzeichen sind Zeichen, die nicht direkt auf dem Bildschirm sichtbar
sind. Übliche Steuerzeichen sind z.B. ein Tabulatorenschritt,
Zeilenumbruch, Alarmton, Textanfang oder Textende. Für diese Zeichen
sind im
[ASCII](https://de.wikipedia.org/wiki/American_Standard_Code_for_Information_Interchange)
-Zeichencode Steuerzeichen mit den Codewerten 0 bis 31 reserviert.

Steuerzeichen »versteht« der `echo`-Befehl nur, wenn Du die Option `-e`
nutzt. Während der erste Befehl einfach nur die Zeichen ausgibt,…

    $ echo "\a"
    \a

…ertönt beim zweiten Befehl ein Alarm-Ton.

    $ echo -e "\a"

Standardmäßig beendet der `echo`-Befehl die Ausgabe immer mit einem
Zeilenumbruch. Den Zeilenumbruch unterbindest Du auf zwei verschiedene
Weisen. Entweder mit dem Steuerzeichen `\c` am Ende der Ausgabe – die
Option `-e` muss gesetzt sein, z.B.
    so:

    $ echo -e "Fang den Satz an \c";echo "und beende diesen in der gleichen Zeile."

Oder Du setzt die Option `-n` für die Unterdrückung des
    Zeilenumbruches.

    $ echo -n "Fang den Satz an ";echo "und beende diesen in der gleichen Zeile."

Welche Steuerzeichen für `echo` in der Bash-Shell zur Verfügung stehen,
zeigt Dir die folgende
Tabelle.

| Escape-Sequenz | Bedeutung |
| -------------- | --------------------------------- |
| \\a            | Alarm-Ton (Beep) |
| \\b            | Backspace; ein Zeichen zurück |
| \\c            | continue; das Newline-Zeichen unterdrücken |
| \\f            | Form Feed; einige Zeilen weiterspringen |
| \\n            | Newline; Zeilenumbruch |
| \\r            | return; zurück zum Anfang der Zeile |
| \\t            | Tabulator (horizontal) |
| \\v            | Tabulator (vertikal); meistens eine Zeile vorwärts |
| \\\\           | das Backslash-Zeichen ausgeben |
| \\0nnn         | ASCII-Zeichen in oktaler Form (nur sh und ksh); z. B. aus \\0102 wird B (dezimal 66) |
| \\nnn          | ASCII-Zeichen in oktaler Form (nur Bash); z. B. aus \\102 wird wird B (dezimal 66)   |

## Farben für Schrift und Hintergrund bestimmen mit `echo`

Um bei der Textausgabe über `echo` die Farbe zu ändern, nutzt man auch
Steuerzeichen, die Textattribute wie Farbe, Fettschrift oder
Hintergrundfarbe verändern.

Dazu gibt es verschiedene Möglichkeiten bzw. Zeichenketten. Die
hässlichste und sehr schwer lesbare Variante sieht so aus und sämtliche
Zeichen müssen von Anführungszeichen umklammert werden:

    $ echo -e "\033[31mRoter Text"

Wie zuvor, funktionieren die Steuerzeichen nur, wenn Du die Option `-e`
nutzt. Die Zeichenkette für Farbe ist immer die gleiche. Zuerst wird Sie
mit `\033[` eingeleitet, dann folgt eine Zahl z.B. `33` für Gelb und
abschließend ein `m`.

Um alle Attribute wieder zurückzusetzen, nutzt man `\033[0m`.

    $ echo -e "\033[0m"

Um so z.B. einen Satz in gelber Schrift auszugeben, eine Variable – hier
eine Zufallszahl mit `$RANDOM` in blau und dann wieder alles auf Null zu
setzen, sieht der `echo`-Befehl dann so aus.

    $ echo -e "\033[33mEine Zufallszahl in blau: \033[34m$RANDOM\033[0m"

Du siehst, es wird schnell hässlich und unlesbar. Zum Glück gibt es eine
einfachere Lösung: Zuert speichert man die Sequenzen in einer Variablen,
die man anschließend dann gemeinsam mit dem `echo`-Befehl nutzt.

### Farben in Variablen schreiben

Zuerst definierst Du in Deinem Bash-Script die Farben als Variablen,
z.B. so:

    reset='\x1B[0m'
    yellow='\x1b[0;33m'
    boldyellow='\x1b[1;33m'
    white='\x1b[0;37m'
    boldwhite='\x1b[1;37m'
    grey='\x1b[1;30m'

Anschließend kannst Du die Farben einfach über den Echo-Befehl
    aufrufen:

    $ echo -e "Das ist ${yellow}gelb, ${boldyellow}fettes gelb, ${white}weiß oder ${grey}grau. ${reset}Und nach dem Rest ist der Text wieder normal."

### Tabelle mit Codes Texteigenschaften

| Steuerzeichen        |  Beschreibung               |
| -------------------- | --------------------------- |
| \033\[0m            | alle Attribute zurücksetzen |
| \033\[1m            | Fettschrift                 |
| \033\[4m            | Unterstreichen              |
| \033\[5m            |  Blinken                    |
| \033\[7m            | inverse Darstellung         |

### Tabelle mit Escape-Codes für Farbe, Hintergrundfarbe

| Steuerzeichen        |  Beschreibung               |
| -------------------- | --------------------------- |
| \x1b\[0;30m  oder \033\[30m  | Schriftfarbe schwarz |
| \x1b\[0;31m   oder \033\[31m | Schriftfarbe rot |
| \x1b\[0;32m  oder \033\[32m  | Schriftfarbe grün |
| \x1b\[0;33m  oder \033\[33m  | oder Schriftfarbe gelb |
| \x1b\[0;34m  oder \033\[34m  | Schriftfarbe blau |
| \x1b\[0;35m  oder \033\[35m  | Schriftfarbe magenta |
| \x1b\[0;36m  oder \033\[36m  | Schriftfarbe türkis  |
| \x1b\[0;37m  oder \033\[37m  | Schriftfarbe weiß |
| \x1b\[0;38m  oder \033\[40m  | Hintergrund schwarz |
| \033\[41m     | Hintergrund rot |
| \033\[42m     | Hintergrund grün |
| \033\[43m     | Hintergrund gelb |
| \033\[44m     | Hintergrund blau |
| \033\[45m     | Hintergrund magenta |
| \033\[46m     | Hintergrund türkis |
| \033\[47m     | Hintergrund grau |


