---
title           :  rsync – Dateien und Verzeichnisse synchronisieren
chapter         : 4
categories      : "Dateien Upload und Download"
description     : 'Rsync ist
sehr flexibel und netzwerkfähig und kann auch Daten zwischen einem
lokalen Computer und einem Server abgleichen.'
slug            : rsync
---
[Rsync](https://rsync.samba.org/) ist ein leistungsstarkes
Dienstprogramm für die Synchronisierung von Dateien. Rsync ist sehr
flexibel und netzwerkfähig und kann auch Daten zwischen einem lokalen
Computer und einem Server abgleichen. Anstelle jedes Mal von neuem
sämtlichen Daten hin- und herzukopieren, verwendet Rsync einen
Algorithmus, der nur die Dateien kopiert, verschiebt und löscht, die
sich tatsächlich geändert haben.
<!--more-->

# Rsync aktualisieren (installieren)

Da Rsync erfreut sich großer Beliebtheit besonders, weil man es als
Werkzeug für System-Script nutzen kann. In den meisten
Linux-Distributionen ist es enthalten. Auch Mac OS X kommt mit Rsync,
aber ein veralteten Version. Um die aktuelle Version Rsync einzuspielen,
nutzt Du am Besten den Paketmanager HomeBrew. Mehr zu HomeBrew im
dazugehörigen Kapitel.

Um Rsync zu installieren, tippst Du die beiden folgenden Befehle in das
Terminal:

    $ brew tap homebrew/dupes
    $ brew install rsync

Sollte sich Homebrew mit `Error: rsync-3.1.1 already installed` oder
einer ähnlichen Nachricht beschweren, dann tippst Du vor der
Installation zuerst folgendes ein und startest dann die Installation
über die vorherigen Befehle einfach erneut.

    $ brew unlink rsync

**Links**

[How To Use Rsync to Sync Local and Remote Directories on a
VPS](https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories-on-a-vps)
