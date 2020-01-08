---
subtitle        : Terminal
title           : Shell? Bash? Terminal? Kommandozeile? – Eine Einführung
chapter         : 1
categories      : "Einführung"
description     : 'Ein Grund warum viele erst
einmal einen Bogen vor dem Terminal machen, ist die Verwirrung um
Begriffe und das komische Kauderwelsch der »Experten«.'
slug            : start
---
Ein Grund warum viele erst einmal einen Bogen vor dem Terminal machen,
ist die Verwirrung um Begriffe und das komische Kauderwelsch der
»Experten«. Dabei ist es eigentlich einfach, wenn man ein wenig graue
Theorie und Begriffe vorher abgklärt. Also leuchten wir doch einmal ins
Dunkel…
<!--more-->

Also: In der Informatik bezeichnet man als Shell die Software, die den
Benutzer mit dem Computer verbindet. Die Shell ermöglicht z.B. sich über
das System oder Dateien zu informieren oder das System zu bedienen. Die
Shell ist in der Regel ein Teil des Betriebssystems. Es gibt zwei Arten
von Shells:

1.  Kommando-orientierte Shell › z.B. bei OS X das Terminal

2.  eine Shell mit grafischer Bedienungsoberfläche › z.B. bei OS X der
    Finder

Das Terminal ist eine Kommando-orientierte Shell, weil wir hier
Kommandos direkt eingeben, anstelle mit der Maus Buttons zu klicken und
in Felder Informationen einzutragen. Bei den Kommando-orientierten
Shells gibt es auch wiederum zahlreiche verschiedene: Bourne shell, Bash
(Unix shell), Z shell und so weiter. Als Standard auf Mac-Rechnern
öffnet sich mit dem Terminal die *bash shell*, oft auch nur *bash*
genannt.

# Welche Bash ist installiert? Die Bash aktualisieren

Um zu testen, welche Version der bash Du auf Deinem Rechner nutzt,
tippst Du einfach `bash --version` ein. Das Ergebnis kann dann so
aussehen:

    $ bash --version
    bash --version
    GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin14)
    Copyright (C) 2007 Free Software Foundation, Inc.

Willst Du eine neuere Version installieren, so übernimmt die
Installation bei den meisten Nutzern ein so genannter Paket-Manager die
Arbeit. Beliebt und einfach ist die Arbeit mit
[HomeBrew](http://brew.sh/index_de.html). Das ist der OS
X-Paket-Manager. Um zu überprüfen, ob Du HomeBrew installiert hast,
tippst Du in das Terminal:

    $ brew --version

> **Tip**
> 
> Ein **Paket-Manager**, ist eine Software-Paketverwaltung. Viele Open
> Source-Programme installiert man als Paket und nicht als ausführbare
> Datei. Mit Hilfe eines Paket-Managers installierst, aktualisierst und
> deinstallierst Du Software auf Deinem Rechner. Im englischen heißen
> Paket-Manager auch *package manager* oder *package management system*.
> Auf OS X-Systemen ist *HomeBrew* sehr beliebt, muss aber erst selbst
> installiert werden, bevor man ihn nutzen kann.

Wenn HomeBrew nicht installiert ist, dann kannst Du HomeBrew
unkompliziert mit dem folgenden Befehl
    installieren:

    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Um die aktuelle stabile Version der Bash zu installieren, befiehlst Du
HomeBrew loszulegen:

    $ brew update && brew install bash

Anschließend solltest Du die aktuelle Version der bash nutzen, wenn Du
das Terminal beim nächsten Mal startest.
