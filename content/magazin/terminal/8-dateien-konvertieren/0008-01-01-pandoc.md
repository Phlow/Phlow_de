---
title:  Konvertieren mit Pandoc – HTML, PDF, Markdown, ODT…
categories : "Dateien konvertieren"
description : 'Diese Anleitungen
erklären Dir wie du Pandoc erfolgreich nutzt, um Texte zu konvertieren,
egal ob EPUB, DOCX, PDF, HTML, Markdown, ODT,…'
---
[Pandoc](http://johnmacfarlane.net/pandoc/) beschreibt sich Pandoc als
universelles Werkzeug für die Dokumentenkonvertierung. Pandoc gehört zu
den flexibelsten und umfangreichsten Textkonvertierern und ist obendrein
kostenlos. Das Terminal-Programm wandelt zahlreiche Formate wie EPUB,
DOCX, PDF, HTML, Markdown, ODT, Asciidoc und andere nach Belieben hin
und her. Eine Einführung in das Kommandozeilenprogramm.

> If you need to convert files from one markup format into another,
> pandoc is your swiss-army knife.
> 
> —  John MacFarlane http://johnmacfarlane.net 

# Eine Internetseite in eine ODT-Datei verwandeln

    $ pandoc -f html -t odt -o matt.odt http://j.mp/m_mcconaughey

Der obige Befehl liest sich erst einmal kryptisch, ist aber so schon
leichter zu verstehen, wenn man ihn ein wenig ausführlicher in die
Kommandozeile
    hackt:

    $ pandoc --from html --to odt --output matt.odt http://j.mp/m_mcconaughey

Gelesen lautet das: Konvertier bitte ein Dokument von (`--from`) HTML in
das Zielformat (–to) `odt` und speicher es als Zieldatei (`--output`)
`matt.odt` ab und schnapp dir als Quelle die Website
`http://j.mp/m_mcconaughey`. Für Tippfaule geht es natürlich noch
kürzer:

    $ pandoc -f html -o matt.odt http://j.mp/m_mcconaughey

Denn das Zielformat *»errät«* Pandoc anhand der Dateiendung der
Zieldatei. Schick, oder?

# PDF-Umwandlung mit Pandoc

Damit Pandoc Dateien in PDF-Dateien umwandeln kann, benötigt man die
Latex-Bibliothek. Denn die Umwandlung basiert auf Latex. Auf einem Mac
schnappt man sich dazu die [MacTeX-2014
Distribution](https://tug.org/mactex/). Wie man [Latex auf dem eigenen
Rechner
installiert](http://www.latexbuch.de/latex-apple-mac-os-x-installieren/),
zeigt der Buchautor Joachim Schlosser des Buches »Das LaTeX-Buch« auf
der dazugehörigen Website.

Und dann reicht ein Befehl, wie z.B:

    $ pandoc test.txt -o test.pdf

# HTML-Dokumente in Markdown-Dokumente konvertieren

Markdown gehört zu meinen Lieblingswerkzeugen, um Texte zu schreiben.
Und sämtliche meiner Texte schreibe ich mittlerweile mittels der
Markdown-Syntax. Großartig, dass auch hier Pandoc ein wunderbares
Werkzeug für die Konvertierung ist. HTML-Dokumente konvertiere ich ohne
Probleme mit Pandoc und das Werkzeug löscht sämtliches HTML drumherum.
Selbst wenn man **nicht** mit Markdown arbeitet: Schneller »lutscht« man
den Text nicht aus einer HTML-Seite und bringt ihn auch noch
gleichzeitig in Form. Und so geht’s

    $ pandoc -f html -t markdown -o resultat.md quelldatei.html

Will man die IDs im HTML-Text auch konvertieren, benötigt man einen
anderen Parameter: `markdown-auto_identifiers`. Dieser hilft erstellt
bei der Konvertierung dann die IDs innerhalb des Markdown-Dokumentes.

Aus…

    <h2 id="seminar-teil-1">Seminar Teil 1</h2>

…wird dann…

    == Seminar Teil 1 {#seminar-teil-1}

# Mehrere Dateien gleichzeitig mit Pandoc konvertieren

Mit Hilfe einer for-Schleife konvertiert Pandoc gleich einen ganzen
Stapel Dateien. Der folgende Befehl konvertiert alle Markdown-Dateien
mit der Dateiendung `.md` um in Asciidoc-Dateien.

    $ for i in *.md;do pandoc -s -S $i -t asciidoc -o $i.adoc; done

Der Befehl liest sich so: Für alle Dateien `i` mit der Endung `.md` tue
`do` Folgendes: Darauf folgt der Pandoc-Befehl für die Konvertierung.
Die Schleife wird mit `done` abgeschlossen.

# Markdown-Dokumente umwandeln für Indesign mit Pandoc (ICML)

Pandoc kann Dokumente in ICML-Dateien konvertieren. ICML-Dateien werden
in der Regel von InCopy verwaltet, dem Textverarbeitungsprogramm von
Adobe, das in Adobe InDesign integriert werden soll.

Einer der Vorteile bei der Verwendung von Pandoc zur Erzeugung von
ICML-Dateien ist die Tatsache, dass kein Zwischenformat benötigt wird.
Daher kannst Du direkt Markdown-Quelldateien verwenden. Und so sieht der
pandoc-Befehl für die Konvertierung aus:

    $ pandoc -s -f markdown -t icml -o indesign.icml original.md
