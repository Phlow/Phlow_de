---
subtitle         : "Spaß mit dem Terminal"
title            :  "Der Sprachbefehl say – Stimmen, Einstellungen, Möglichkeiten"
chapter          : 9
categories       : Verschiedenes
slug             : say
---
Mit dem Sprachbefehl `say` kann man viel Spaß im Mac-Terminal haben.
Neben verschiedenen Stimmen, lässt sich z.B. Gesprochenes auch als
Audiodatei abspeichern.
<!--more-->

`say` bietet zahlreiche Einstellungsfunktionen, wie z.B. verschiedene
Stimmen für unterschiedliche Sprachen, die Geschwindigkeit der
Aussprache, das Speichern von Audiodateien und auch das Vorlesen ganzer
Textdateien.

Der Befehl funktioniert simpel. Einfach den Befehl eingeben und
anschließend das zu Sagende eintippen. Bei der Sprachausgabe greift der
Computer dann auf die Standardstimme zurück.

# Probier mal diese Audiodatei

Im folgenden Beispiel hörst Du verschiedene Stimmen.

Zum nachmachen, öffnest Du einfach das Terminal und tippst den Befehl
`say` ein.

    $ say Hallo, wie geht es Dir?

# Welche Stimmen bietet der Sprachbefehl `say`?

Um die verschiedenen Stimmen aufzulisten, die `say` anbietet genügt der
folgende Befehl. Die Option `-v` ruft die jeweilige Sprache auf. Gibt
man anstelle eines Namens der Sprachausgabe ein `?` ein, listet das
Terminal alle vorhandenen Stimmen.

    $ say -v '?'

# `say` liest auch komplette Textdateien vor

Um eine Textdatei vorlesen zu lassen, brauchst Du die Option `f` für
*file*. Der folgende Befehl zum im aktuellen Verzeichnis die Datei
*text.txt* und liest sie mit der deutschen Stimme *markus* vorlesen.

    $ say -v markus -f text.txt

# Geschwindigkeit von say bestimmen mit `r`

Wie schnell und wieviel Wörter in der Minute gesprochen bzw. vorgelesen
werden sollen bestimmst Du über den Parameter `r`. Während die normale
Geschwindigkeit ca. 175 Wörter die Minute beträgt, verlangsamst Du z.B.
mit `-r 50` die Lesegeschwindigkeit oder beschleunigst Sie mit `-r 220`.

    $ say -v markus -r 50 -f text.txt

# Die say-Sprachausgabe als Audiodatei speichern

Möchtest Du die Stimme für Musikprogramme, für Videos oder Podcasts
nutzen, so lässt sich die Stimme für die spätere Verwendung speichern.
Dafür benötigst Du die Option `-o` für *Output*. Anschließend gibst Du
den Pfad und/oder den Dateinamen an. Das folgende Beispiel speichert die
Begrüssung unter *sprachausgabe.aiff* ab.

    $ say -o sprachausgabe Hallo, wie geht es Dir?

Standardmäßig speichert `say` die Audiodatei im AIFF-Format ab.

# Standardstimme über Systemeinstellungen ändern, weitere nachladen

Um die Standardstimme zu ändern, öffnest Du die *Systemeinstellungen ›
Bedienungshilfen › Sprachausgabe* – siehe Bildschirmfoto. An dieser
Stelle bestimmst Du auch die Standardeinstellung für die
Sprachgeschwindigkeit.

{{< amp/img src="/images/terminal/terminal-say-sprachausgabe.png" width="762" height="432" alt="Die Standardstimme ändert man über Systemeinstellungen › Bedienungshilfen › Sprachausgabe" >}}

Außerdem kannst Du auch [weitere Stimmen
hinzufügen](https://support.apple.com/kb/PH25378?locale=de_DE&viewlocale=de_DE).
So bietet Mac OS X auch *außergewöhnliche* Stimmen an. Dazu gehören z.B.
*Bad News*, *Cellos* oder *Pipe Organ*.

{{< amp/img src="/images/terminal/terminal-say-noch-mehr-stimmen.png" width="762" height="432" alt="Außergewöhnliche Stimmen lädt man über die Systemeinstellungen nach" >}}

    $ say -v 'bad news' This is so bad.

Witzig ist auch die Stimme *hysterical*.

    $ say -v hysterical Oh, no i cant believe it.

Oder wie wäre es mit einem kleinen Liedchen mit der Stimme *pipe
organ*-.

    $ say -v 'pipe organ' Dum dum dee dum dum dum dum dee Dum dum dee dum dum dum dum dee dum dee dum dum dum de dum dum dum dee dum dee dum dum dee dummmmmmmmmmmmmmmmm

Oder mit *cellos* Stimme, die »In der Halle des Bergkönigs« von Edvard
Grieg
    singt.

    $ say -v cellos Doo da doo da dum dee dee doodly doo dum dum dum doo da doo da doo da doo da doo dad doo da doo

Die [komplette Anleitung des
say-Befehls](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/say.1.html)
findest Du unter dem Link oder gibst sie dir direkt über das Termin mit
`man say` aus. Um die Anleitung im Terminal zu verlassen tippst Du
einfach auf `q`.
