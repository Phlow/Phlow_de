---
title:  "sftp nutzen: Dateien hochladen und runterladen"
categories : "Dateien Upload und Download"
description : 'Dateien lädt
man über das Terminal auf einen Server mit `sftp` hoch. Will man ganze
Ordner hochladen, muss man einige Dinge beachten.'
slug            : sftp
---
Dateien lädt man über das Terminal auf einen Server mit `sftp` hoch.
Will man ganze Ordner hochladen, muss man einige Dinge beachten, sonst
gibt man schnell frustriert auf.
<!-- readmore -->

Um den Umgang mit `sftp` besser zu illustrieren, zeige ich Dir anhand
eines Beispieles, wie es funktioniert. Auf meinem Rechner liegt der
Ordner *sftp\_beispiel* auf dem Desktop, der wie folgt strukturiert ist.

**Struktur des Ordners.**

    sftp_beispiel/
    ├── bild-01.jpg
    ├── bild-02.jpg
    ├── bild-03.jpg
    ├── index.html
    └── unter_ordner
        ├── bild-04.jpg
        ├── bild-05.jpg
        ├── index.html
        └── unter_unter_ordner
            ├── bild-06.jpg
            ├── bild-07.jpg
            ├── bild-08.jpg
            ├── bild-09.jpg
            ├── bild-10.jpg
            └── index.html
    
    2 directories, 13 files

# Einloggen per sftp

Standardmäßig verwendet SFTP das SSH-Protokoll, um eine sichere
Verbindung zu authentifizieren und herzustellen. Aus diesem Grund sind
die gleichen Authentifizierungsmethoden verfügbar, die in SSH vorhanden
sind. Obwohl Passwörter einfach zu verwenden und standardmäßig
eingerichtet werden, empfehle ich Dir, SSH-Schlüssel zu erstellen und
Deinen öffentlichen Schlüssel auf jedes System zu übertragen, auf das Du
zugreifen musst. Dies ist sicherer und spart Dir auf lange Sicht Zeit.
Wie Du einen Schlüssel erstellst, erfährst Du bei Deinem Provider.
Beachte, dass nicht jedes Webhosting-Paket den Zugang per ssh
ermöglicht.

Wenn Du eine Verbindung zum Server über SSH herstellen kannst, hast Du
alle erforderlichen Voraussetzungen erfüllt, um SFTP zum Verwalten von
Dateien zu verwenden. Den SSH-Zugriff testet Du mit dem folgenden
Befehl:

    $ ssh benutzer_name@ftp.server.de

Wenn der Login funktioniert, tippst Du…

    $ exit

…um Dich wieder auszuloggen. Jetzt kannst Du eine SSH-Verbindung
aufbauen und eine SFTP-Sitzung starten. Um Dateien runter- oder
hochzuladen, loggst Du Dich im ersten Schritt also mit `sftp` ein. Dazu
benötigt man, wie bei einem normalen FTP-Programm die Adresse des
Servers, einen Nutzernamen und ein Passwort. Im ersten Schritt
kontaktiert man den Server. Anschließend will der Server das Passwort
haben.

    $ sftp -r benutzer_name@ftp.server.de

Die Option `-r` stellt im Vorfeld bereits den rekursiven Upload und
Download ein. Das bedeutet, dass Du auch gleich in einem Rutsch Dateien
runter- oder hochladen kannst. `sftp` geht dann alle Verzeichnisse
durch. Sonst müsstest Du für jede Datei extra einen Befehl eingeben.

Wie auf Deinem eigenen Rechner kannst Du mit sftp folgende Befehle
ausführen, die im Kapitel »Befehle für Dateien und Ordner« näher
erklärt werden. Hier noch einmal eine
Kurzübersicht:

| Befehl | Beschreibung                                                       |
| ------ | ------------------------------------------------------------------ |
| cd     | Wechsel das Verzeichnis – z.B. `cd ..`                             |
| chmod  | ändere die Zugriffsrechte von Dateien                              |
| df     | `df` steht für disk free und gibt den freien Festplatten-Platz an. |
| ls     | liste Dateien im Ordner auf                                        |
| mkdir  | erstelle einen Ordner                                              |
| rm     | lösche eine Datei                                                  |

Mögliche Befehle mit sftp

Während die obigen Befehle auf dem Server funktionieren, können einige
Befehle auch auf dem lokalen Rechner ausgeführt werden. Dazu stellst Du
einfach ein `l` für *local* dem Befehl voran. So wird aus `cd` einfach
`lcd` und `ls` wird zu `lls`. Um nachzuschauen, in welchem Verzeichnis
Du Dich auf Deinem Rechner befindest, tippst Du einfach `lpwd` und das
Terminal gibt Dir den Pfad aus.

Hier noch einmal die wichtigsten Befehle, um auf Deinem eigenen Rechner
während einer `sftp`-Session zu navigieren:

  - lcd

  - lls

  - lmkdir

  - lpwd

> **Tip**
> 
> Mit `help` kannst Du Dir jederzeit die Hilfe von `sftp` aufrufen. Sie
> listet Dir alle Optionen und Erklärungen auf.

# Navigieren mit `sftp`

Mit Hilfe einer Anzahl von Befehlen kannst Du durch die Dateihierarchie
des entfernten Systems navigieren. Zur Orientierung dient `pwd`. Mit
`pwd` findest Du heraus in welchem Verzeichnis Du Dich aktuell auf der
Server befindest. Wie normalerweise im Terminal auch, gibt Dir der
folgenden Befehl den Pfad aus:

    $ pwd

## put und get – Hochladen und Runterladen

Um Daten hoch- und runterzuladen nutzt Du `put` und `get`. Mit `put`
schiebst Du Daten auf den Server und mit `get` bekommst Du Daten bzw.
lädst sie herunter.

# sftp: Ordner mit Unterordnern hochladen

**Vorsicht\!** – Damit Du Dateien und Unterordner eines Ordners von
Deinem Rechner auf den Server hochladen kannst, musst Du zuerst das
Verzeichnis auf dem Server anlegen. Sonst beschwert sich sftp mit
*Couldn’t canonicalise: No such file or directory*.

    $ mkdir sftp_beispiel

## sftp beenden

Um `sftp` zu beenden, tippt man einfach `exit` in das Terminal und loggt
damit aus:

    sftp> exit
