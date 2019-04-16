---
title: "Konvertierung: Von Asciidoc zu PDF"
categories : "Dateien konvertieren"
description : 'Tipps um aus Asciidoc ein perfektes PDF mit eigenem Design, Cover, Schriften und Vorlage zu erstellen.'
slug            : asciidoctor
---
Als Web-Entickler schreibt man oft auch Dokumentationen oder
veröffentlicht wie ich eigene Fachbücher. Asciidoc eignet sich für
dieses Vorhaben hervorragend und sticht Markdown um Längen, mit
Seitenumbrüchen, einer komplexeren Handhabung von Bildern und so weiter.
Mit Asciidoctor steht dafür ein exzellentes Werkzeug zur Verfügung. Eine
kleine Einführung.

Mit der freien und stabilen Software Asciidoctor konvertierst Du
Asciidoc-Dateien in perfekte HTML-Webseiten, PDF-Dokumente oder
ePUB-eBooks. Ein großes Plus von Asciidoctor ist, dass Du eigene Designs
erstellen kannst, die Themes.

[Asciidoctor](http://asciidoctor.org/) ist ein schnelles
Textkonvertierungsprogramm und eine so genannte *»Toolchain«*
(Werkzeugkette) für das Umwandeln von AsciiDoc-Inhalten nach HTML5,
DocBook 5 (oder 4.5), PDF und zu weiteren Formaten. Asciidoctor ist in
der Programmiersprache Ruby geschrieben, kommt daher als
[RubyGem](https://de.wikipedia.org/wiki/RubyGems) und wird auf
[RubyGems.org](https://rubygems.org/) veröffentlicht. Das Ruby Gem ist
auch in mehreren Linux-Distributionen enthalten, darunter Fedora, Debian
und Ubuntu. Asciidoctor ist Open Source und wird »gehostet« auf GitHub.
Asciidoctor wird unter einer der MIT Lizenz veröffentlicht. Asciidoctor
ist hervorragend dokumentiert – sofern Du Englisch sprichst.

# Installation von Asciidoctor

Asciidoctor basiert auf Ruby, dass auf Deinem Computer laufen musst. Auf
der [Website von Asciidoctor](http://asciidoctor.org/) erfährst Du
welche Version notwendig ist. Um Asciidoctor genügt der folgende Befehl,
der das Gem-Paket installiert.

## Asciidoctor installieren

    $ gem install asciidoctor

Um Asciidoctor zu aktualisieren, tippst Du folgendes in Dein Terminal:

## Asciidoctor aktualisieren

    $ gem update asciidoctor

Wenn Du eine neue Asciidoctor-Version mit `gem install` installierst,
anstelle Asciidoctor mit `gem update asciidoctor` zu aktualisieren, kann
es sein, dass auf Deinem Rechner mehrere Version installiert wurden.
Sollte das der Fall sein, dann säuberst Du Dein System mit `gem cleanup
asciidoctor` und alle alten Versionen werden entfernt.

# Asciidoc-Dokumente in HTML-Dateien umwandeln

Um eine Asciidoc-Datei in eine HTML-Webseite zu verwandeln, genügt der
folgende kurze Befehl:

    $ asciidoctor textdatei.adoc

# PDF-Dateien mit asciidoctor-pdf

Um [asciidoctor-pdf](https://github.com/asciidoctor/asciidoctor-pdf) zu
installieren, tippst Du den folgenden Befehl in Dein Terminal:

    $ gem install --pre asciidoctor-pdf

Um mit asciidoctor-pdf Asciidoc-Datein in PDF-Dateien umzuwandeln reicht
der einfache Befehl…

    $ asciidoctor-pdf beispiel.adoc

Um eigene Stilvorgaben anzuwenden, benötigt der Befehl mehr
Informationen. Im unteren Beispiel übergibt man asciidoctor-pdf eine
Datei für die Typografie namens *styles.yml*. Wenn in der *styles.yml*
Schriften genutzt werden, musst Du asciidoctor-pdf ein Verzeichnis mit
den genutzten Schriften nennen. Das geschieht mit *-a
pdf-fontsdir=fonts/*

    $ asciidoctor-pdf -a pdf-style=themes/styles.yml -a pdf-fontsdir=fonts/ beispiel.adoc

# Eigene Style-Vorgaben für asciidoctor-pdf

> **Tip**
> 
> In diesem
> [GitHub-Gist](https://gist.github.com/Phlow/ff50c054b9a4910220413bf51bab8aae)
> findest Du Vorlagen für die Stilvorgaben.

Für Asciidoctor kannst Du auch eigene Style-Vorgaben anlegen. Diese
Stylevorgaben liegen im YAML-Format vor. Wenn Du Ahnung von CSS hast,
ist die Bearbeitung eigentlich selbsterklärend. Mehr Informationen zur
Gestaltung von PDF-Dateien findest Du im [Asciidoctor PDF Theming
Guide](https://github.com/asciidoctor/asciidoctor-pdf/blob/master/docs/theming-guide.adoc).

Die einfachste Variante um eigene Asciidoctor-PDF-Styles zu erstellen,
geht so.

1.  Erstelle ein Verzeichnis z.B. */asciidoctor* auf Deinem
    Schreibtisch.

2.  Lege zwei Unterverzeichnisse */themes* und */fonts* an.

3.  Kopiere die Originaldatei *default-theme.yml* des
    asciidoctor-pdf-gems in das Unterverzeichnis */themes*. Du findest
    Sie auf Deinem Rechner über den Suchbefehl `find ~/ -name
    default-theme.yml`.

4.  Kopiere Schriften, die Du nutzen willst in den Ordner */fonts*.

5.  Erstelle ein .adoc-Dokument im Hauptverzeichnis.

Das Endergebnis sieht dann so aus.

    └── asciidoctor
        ├── DOKUMENT.adoc
        ├── fonts
        │   ├── OpenSans-Bold.ttf
        │   ├── OpenSans-BoldItalic.ttf
        │   ├── OpenSans-Italic.ttf
        │   ├── OpenSans-Regular.ttf
        └── themes
            └── THEME.yml

Um Deine Asciidoctor-Datei zu konvertieren, wechselst Du in das
Verzeichnis – hier *asciidoctor* und tippst das folgende Kommando in
Dein
    Terminal:

    $ asciidoctor-pdf -a pdf-style=themes/THEME.yml -a pdf-fontsdir=fonts/ DOKUMENT.adoc

# Hilfreiche Asciidoctor-Links

  - [Asciidoctor User Manual](http://asciidoctor.org/docs/user-manual/)
  - [AsciiDoc Syntax Quick
    Reference](http://asciidoctor.org/docs/asciidoc-syntax-quick-reference/)
