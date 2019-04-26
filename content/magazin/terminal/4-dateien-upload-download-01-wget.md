---
title: "wget: Dateien runterladen per Terminal"
chapter         : 4
categories : "Dateien Upload und Download"
description : 'wget ermöglicht Dir Dateien über die Kommandozeile herunterzuladen.'
slug            : wget
---
[Wget](http://www.gnu.org/software/wget/) ermöglicht Dir Dateien über
die Kommandozeile herunterzuladen. Mit Hilfe eines Skriptes kannst Du
so, z.B. automatisiert Deine eigene WordPress-Distribution mit
gewünschten Plugins direkt in einem Zug herunterladen.
<!-- readmore -->

Wget unterstützt die Protokolle ftp, http und https. Wget steht als
freies Kommandozeilenprogramm für die Betriebssysteme Unix, GNU/Linux,
OSX, Windows und SkyOS zur Verfügung. Wget ist eine Alternative für
[cURL](https://curl.haxx.se/).

# wget auf dem Mac installieren

Am unkompliziertesten installierst Du *Wget* mit Hilfe des Paketmanagers
{{ '/homebrew/' | absolute\_url }}\[Homebrew\]. Dazu genügt das folgende
Kommando:

    $ brew install wget --with-libressl

# Download: Dateien mit wget herunterladen

Mit *Wget* lädst Du einfach Dateien herunter. Um z.B. auf Archive.org
ein ZIP-Paket mit Musikdateien herunterzuladen, genügt der folgende
Befehl. Keine Angst, dieser Download ist vollkommen legal.

    $ wget https://archive.org/compress/one012

# WordPress runterladen, entpacken und Archiv löschen

    $ wget http://wordpress.org/latest.tar.gz && tar xfz latest.tar.gz
    && rm -f ~~~latest.tar.gz

# Komplette Website mit Wget herunterladen

Als Webdesigner muss man manchmal alte Websites stilllegen. Das kommt
z.B. vor, wenn ein Kunde gerne eine WordPress-Website in eine statische
Präsenz konvertiert haben möchte, damit er die WordPress-Website nicht
kontinuierlich pflegen und aktualisieren möchte.

In einem solchen Fall ist Wget sehr hilfreich, denn mit einer Zeile plus
der jeweiligen URL lädt Wget automatisch die gesamte Website herunter.
Wichtig dafür sind die folgenden Parameter:

  - `--mirror`  
    …acht (unter anderem) den Download rekursiv, d.h. Dateien in
    Unterordnern werden auch heruntergeladen.

  - `--convert-links`  
    …konvertiert alle Links (auch zu CSS-Stylesheets) zu relativen
    Links, damit die Kopie auch für die Offline-Betrachtung geeignet
    ist.

  - `--adjust-extension`  
    …fügt den Dateinamen passende Erweiterungen wie z.B. *.html* oder
    *.css* hinzu (abhängig von ihrem Inhaltstyp).

  - `--page-requisites`  
    …befiehtl Wget Dateien wie CSS-Stylesheets und Bilder
    herunterzuladen, die für die Website erforderlich sind.

  - `--no-parent`  
    …verbietet Wget bei der rekursiven Arbeit, übergeordnete
    Verzeichnisse herunterzuladen. Dieser Parameter ist nützlich, um den
    Download auf nur einen Teil einer Website beschränken.

  - `-e robots=off`  
    ignoriert die robots.txt datei, damit der mirror wirklich
    vollständig ist

Zusammengefügt sieht das dann wie folgt aus und lädt die Website
*<http://netlabels.org/>*
    herunter.

    $ wget --mirror --adjust-extension --convert-links --page-requisites -e robots=off --no-parent http://www.energiewende-schaffen.de/

# Batch-Script: WordPress und Erweiterungen herunterladen und entpacken

Das folgende Batch-Script erstellt automatisch einen Ordner
*WORDPRESS-DOWNLOAD* und lädt die aktuelle deutsche
WordPress-Distribution und verschiedene Plugins herunter. Anschließend
entpackt das Script die ZIP-Dateien und bewegt die Plugin-Ordner an die
richtige Stelle. Abschließend säubert das Skript die Installation und
löscht unnötige Dateien und die ZIP-Archive.

{% gist 9e16844053b01dcdbdbb %}
