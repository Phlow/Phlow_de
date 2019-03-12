---
title: "guetzli: JPG/JPEG-Bilder schrumpfen auf ein Drittel"
categories : "Bildbearbeitung"
description : 'Mit der Open
Source-Software Guetzli komprimierst Du JPG-Bilddateien. Guetzli
komprimiert die Bilder zwar verlustbehaftet, aber Du siehst es nicht.'
---
![Guetzli Kompression
Vergleichsbild]({{ '/images/guetzli.jpg' | absolute_url }})

Mit der Open Source-Software Guetzli komprimierst Du JPG-Bilddateien.
Guetzli komprimiert die Bilder zwar verlustbehaftet, aber Du siehst es
nicht.

[Guetzli](https://github.com/google/guetzli) von Google arbeitet als
JPG/JPEG-Encoder, der Bilder noch effektiver komprimiert als andere
Werkzeuge. Bei der Guetzli-Kompression handelt es sich um eine
verlustbehaftete Kompression.

Doch die Artefakte, die durch die Kompression auftreten, nimmt das
menschliche Auge so gut wie nicht wahr. Dahingegen sind die
JPG-Bilddateien auffällig kleiner als die Ausgangsdatei. Guetzli eignet
sich somit hervorragend für die Beschleunigung von Webseiten. Denn
kleinere Bilddateien, schnellere Webseiten.

# Guetzli auf dem Mac installieren

Am einfachsten installierst Du Guetzli auf einem Mac mit link:{{
'/homebrew/' | absolute\_url }}\[Homebrew\]. Der Paketmanager
installiert Guetzli ohne Probleme. Dafür kopierst Du einfach die
folgenden Befehle in Dein Terminal. Nutzt Du ein anderes Betriebssystem,
bietet Dir die [Guetzli GitHub
Website](https://github.com/google/guetzli) genügend Alternativen.

    $ brew update
    $ brew install guetzli

# Guetzli arbeiten lassen

Guetzli ist nicht das schnellste Werkzeug, [verkleinert als Ergebnis
aber JPEG-Bilder um ca. ein
Drittel](https://m.heise.de/newsticker/meldung/Googles-Guetzli-Encoder-schrumpft-JPEG-Bilder-um-ein-Drittel-3657823.html)
und das ist enorm. Größere Bilddateien dauern schon einmal mehr als eine
Minute, dafür können sich aber die Resultate sehen lassen und darauf
kommt es an. Um ein Bild mit Guetzli umzuwandeln, tippst Du Folgendes
ins Terminal:

    $ guetzli original.jpg guetzli-version.jpg

Für das Bild zu diesem Beitrag – siehe oben – habe ich sogar noch die
Qualität auf 85 heruntergedreht. Dafür nutzt man die Option `--quality`
auf welche ein Wert folgt. Bei einem Wert von weniger als *85* beschwert
sich Guetzli und verweigert die Kompression.

    $ guetzli --quality 85 original.jpg guetzli-version-q85.jpg

Irritierend bei Guetzli ist, dass Du nicht 100% weist, ob Guetzli
arbeitet. Denn das Terminal bleibt einfach still. Das Werkzeug braucht
nämlich pro Bild einiges an Zeit. Um zu sehen, ob Guetzli arbeitet und
nicht abgestürzt ist, befiehlst Du Guetzli mit der Option `--verbose`
die Ausgabe von Parametern, die bei der Arbeit des Programmes
    entstehen.

    $ guetzli --quality 85 --verbose original.jpg guetzli-version-q85.jpg

# Guetzli einen Stapel Bilder komprimieren lassen

Richtig Spaß macht Guetzli, wenn man den Alogrithmus einfach einen
Stapel Bilder loslässt. Eine einfache for-Schleife sieht dann so
    aus…

    $ for i in *.jpg; do guetzli --quality 85 --verbose $i $i-guetzli-optimiert.jpg; done

# Guetzli Optimizer – Bash-Script mit Datenausgabe

Das folgende kleine link:{{ '/bash-scripte-schreiben/' | absolute\_url
}}\[Bash-Script\] nutze ich immer, wenn ich Guetzli auf einen Stapel
Bilder loslasse. Die Originalbilder überschreibt das Script, also
Vorsicht. Während der Verarbeitung gibt das Script zuerst die aktuelle
Größe und den Dateinamen aus und nach der Guetzli-Bearbeitung die finale
Größe plus die Ersparnis (beides in Byte).

{% gist d1e80574e7162748c2f1113acf2e78d0 %}
