---
title : "Zufällige Passwörter über das Terminal erstellen"
categories : "Produktivität"
description : 'Zufällige
Passwörter erzeugst Du mit dem vorinstallierten Befehl `openssl`. Noch
bessere Passwörter mit Sonderzeichen erlaubt Dir `pwgen`.'
slug            : passwoerter-erstellen
---
Zufällige Passwörter erzeugst Du mit dem vorinstallierten Befehl
`openssl`. Noch bessere Passwörter mit Sonderzeichen erlaubt Dir
`pwgen`.

# Passwörter erstellen mit openssl

Der Befehl `OpenSSL` ermöglicht Dir die wichtigsten kryptografischen
Operationen wie symmetrische Verschlüsselung,
Public-Key-Verschlüsselung, digitale Signaturen, Hash-Funktionen usw.
Mit `openssl` generierst Du Dir schnell und zuverlässige zufällige
Passwörter.

Wenn Du neugierig bist, listet Du Dir mit `openssl
list-standard-commands` sämtliche möglichen Kommandos auf, die Dir
`openssl` bietet.

# So generierst Du zufällige Passwörter über die Befehlszeile

Mit dem folgenden Befehl generierst Du Dir unkompliziert ein zufälliges
Passwort mit `rand` und begrenzt es auf `16` Zeichen:

    $ openssl rand 16

Der Nachteil des obigen Befehls ist, dass wirklich alle möglichen
Zeichen genutzt werden – z.B. auch chinesische.

Dieses Problem behebst Du, indem Du z.B. die `-base64`-Encodierung
nutzt:

    $ openssl rand -base64 16

Das ergibt dann eine Zeichenkette, wie z.B. *2lRVQkMM6YchpGqIRnWvqg==*.
Da diese Zeichenkette aber nicht exakt 16 Zeichen lang ist, musst Du Sie
kürzen. Das geschieht mit `|head -c16;echo`. Der `head`-Befehl zeigt die
x ersten Zeichen einer Datei an. Das bedeutet, dass Dein Computer zuerst
eine zufällige Zeichenfolge erstellt, die er dann dank der so genannten
*Pipe* – das `|`-Zeichen – an den `head`-Befehl weiterleitet. Dieser
kürzt die zufällige Zeichenfolge dann auf tatsächliche 16 Zeichen.
`echo` spuckt dann das Ergebnis über das Terminal aus.

    $ openssl rand -base64 16 |head -c16;echo

# Bessere Passwörter mit `pwgen`

Ein Problem der generierten Passwörter mit `openssl` ist, dass keine
Sonderzeichen genutzt werden. Dafür benötigst Du einen besseren Befehl:
`pwgen`. Da `pwgen` leider nicht vorinstalliert ist, musst Du es mit
link:{{ '/homebrew/' | absolute\_url }}\[Homebrew\] installieren. Das
geht einfach mit…

    $ brew install pwgen

Anschließend steht generierst Du Dir einfach Passwörter, indem Du…

    $ pwgen

…in Dein Terminal tippst. Der Befehl generiert Dir in einem Rutsch
gleich 160 acht Zeichen lange Passwörter. Um die Zeichenlänge (hier 16)
zu bestimmen und die Ausgabe auf ein Passwort zu reduzieren, gibst Du
folgendes ein:

    $ pwgen -n 16 -1

Um sicher zu gehen, dass auch mindestens ein Großbuchstabe auftaucht,
nutzt die Option `-c`.

    $ pwgen -n 16 -c -1

Noch mehr zufälliges Chaos generiert die Option `-s`.

    $ pwgen -n 16 -s -1

Und wenn Du mindestens ein Sonderzeichen jedem Passwort haben möchten,
wählst Du die Option `-y`.

    $ pwgen -n 16 -c -n -s -y -1

# Passwörter über Alias-Befehl `password` erstellen

Damit Du Dir dieses Kommando nicht merken musst, empfehle ich Dir in
Deinem link:{{ '/bash-profile/' | absolute\_url }}\[.bash\_profile\]
einfach ein Alias anzulegen. Dazu kopierst Du z.B. die folgende Zeile in
Dein *.bash\_profile*. Das folgende Alias gibt Dir immer zwei Passwörter
aus. Eines **mit** Sonderzeichen und ein Passwort **ohne**. Der Grund:
Manche Services erlauben bestimmte Sonderzeichen nicht. Dann ist es
hilfreich ein Passwort ohne Sonderzeichen zur Hand zuhaben.

    alias password='pwgen -n 16 -c -n -s -y -1;pwgen -n 16 -c -n -s -1;'

Immer wenn Du dann `password` in Dein Terminal tippst, wirft Dir das
Terminal ein neues Passwort aus, indem es auf den obigen Befehl
zurückgreift.

> **Warning**
> 
> Damit die neuen Einstellungen im *.bash\_profile* wirksam werden,
> musst Du die Einstellungen erneut mit `source ~/.bash_profile` laden.
