---
title:  WordPress per ssh installieren
categories : "Dateien Upload und Download"
description : 'Per Terminal
installierst Du WordPress mit einem kleinen Script in weniger als einer
Minute. Bedingung: Du musst Dich auf Deinem Server per ssh einloggen
können.'
slug            : ssh-wordpress
---
Per Terminal installierst Du WordPress mit einem kleinen Script in
weniger als einer Minute. Bedingung: Du musst Dich auf Deinem Server per
ssh einloggen können.
<!-- readmore -->

Um sich sicher auf einem Server einzuloggen, nutzt man die *Secure
Shell*, kurz *ssh*. Die Secure Shell bezeichnet sowohl ein
Netzwerkprotokoll als auch entsprechende Programme, mit deren Hilfe Du
sicher über eine verschlüsselte Netzwerkverbindung mit einem entfernten
Computer, hier der Server, verbinden kannst.

Mit Hilfe des Befehls `ssh` loggst Du Dich auf dem Server ein und kannst
dann die Kommandozeile des Servers samt der freigeschalteten Befehle
nutzen. So gibst Du mit Deinem Rechner die Kommandos, die dann der
Server ausführt. So kannst Du Dich z.B. auf dem Server einloggen und
Daten auf den Server z.B. mit `wget` runterladen ohne den Umweg über
Deinen Computer zu machen. Das ist z.B. hilfreich und ungemein
schneller, wenn Du WordPress herunterladen und entpacken willst.

# Wieviel Speicher ist auf dem Server frei?

Möchtest Du wissen, wieviel freien Speicher Du auf Deinem Server hast,
kannst Du den `df`-Befehl ausführen. Mit dem folgenden Befehl, erfährst
Du, wieviel Speicher noch zu Verfügung steht und wieviel bereits genutzt
wird:

    $ df -h

Das Ergebnis kann dann so aussehen:

``` 
  Size     Used    Avail   (root)    %Capacity
40.0GB    5.5GB   34.4GB   34.4GB          13%
```

# Einloggen per ssh

Damit Du Befehle direkt auf dem Server ausführen kannst, musst Du Dich
per `ssh`-Befehl auf Deinem Server einloggen. Das ist oft mit einem
Webhosting-Paket nicht möglich, sondern nur mit Server-Paketen, wie z.B.
einem **virtual server**-Paket. So loggst Du Dich bei HostEurope z.B.
mit dem folgenden Befehl ein.

    $ ssh wp0000000000@wp0000000000.server-he.de

Anschließend fragt HostEurope Dein Passwort ab und bei korrekter Eingabe
landest Du dann auf Deinem Server im Root-Verzeichnis.

# WordPress per ssh installieren

Im nächsten Schritt legst Du ein Verzeichnis an, in welches WordPress
heruntergeladen werden soll. Anschließend nutzt Du die folgenden Befehle
für die Installation…

**wordpress-install-script.sh.**

``` 
wget http://wordpress.org/latest.tar.gz;  
tar xfz latest.tar.gz;  
mv wordpress/* ./;  
rmdir ./wordpress/;  
rm -f latest.tar.gz readme.html license.txt liesmich.html;  
```

  - Downloade das gepackte WordPress-Archiv mit `wget`.

  - Entpacke das Archiv mit `tar`.

  - `tar` entpackt WordPress in einen Ordner namens *wordpress*.
    Verschiebe mit `mv` alle Dateien aus *wordpress* in das aktuelle
    Verzeichnis, das eine Ebene höher liegt.

  - Lösche das Verzeichnis *wordpress*.

  - Lösche alle überflüssigen Dateien, wie das tar-Archiv,
    *readme.html*,…

> **Tip**
> 
> Das obige Skript, kannst Du auch einfach markieren und in Dein
> Terminal, Deine Shell, kopieren. Es wird sofort Zeile für Zeile dank
> des Semikolons `;` ausgeführt, dass die Aneinanderreihung von Befehlen
> im Terminal erlaubt.

Um die ssh-Verbindung zu kappen, reicht abschließend ein…

    $ exit

# Verfeinerungen der WordPress-Installation

Möchtest Du in einem Rutsch auch Deine Lieblings-Plugins herunterladen,
dann erhältst Du die letzte Version eines Plugins immer über eine URL,
die wie folgt aufgebaut ist:
**<https://downloads.wordpress.org/plugin/{plugin-name}.latest-stable.zip>**.
Um z.B. Yoast SEO herunterzuladen benötigst Du die folgende
URL:

**<https://downloads.wordpress.org/plugin/wordpress-seo.latest-stable.zip>**

# Die komplette Installationsroutine

    wget http://wordpress.org/latest.tar.gz;
    tar xfz latest.tar.gz;
    mv wordpress/* ./;
    rmdir ./wordpress/;
    rm -f latest.tar.gz readme.html license.txt liesmich.html ./wp-content/plugins/hello.php;
    #
    # Plugins runterladen
    #
    cd ./wp-content/plugins/;
    wget https://downloads.wordpress.org/plugin/wordpress-seo.latest-stable.zip https://downloads.wordpress.org/plugin/jetpack.latest-stable.zip https://downloads.wordpress.org/plugin/cachify.latest-stable.zip  https://downloads.wordpress.org/plugin/sucuri-scanner.latest-stable.zip https://downloads.wordpress.org/plugin/auto-tag-links.latest-stable.zip;
    for i in *.zip;
    do unzip $i;
    done;
    rm *.zip;
    cd ../../;

wget
<https://downloads.wordpress.org/plugin/updraftplus.latest-stable.zip>
