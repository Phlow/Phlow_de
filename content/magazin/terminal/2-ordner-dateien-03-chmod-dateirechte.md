---
title: "chmod: Dateirechte verstehen und ändern"
chapter         : 2
categories : "Ordner und Dateien"
description : 'Jede Datei und jeder
Ordner verfügt über Dateirechte. Wie Dateirechte funktioneren und wie Du
Sie mit chmod änderst erklärt dieses Kapitel.'
slug            : chmod-dateirechte-bearbeiten
---
Jede Datei und jeder Ordner verfügt über Dateirechte. Mit dem Befehl
`chmod` lassen sich die Rechte leicht ändern, wenn man das System
verstanden hat. Und so geht’s…
<!--more-->

Dateirechte geben Benutzern verschiedene Arten von Berechtigungen zum
Lesen, Schreiben und ausführen von Dateien. Zum Beispiel ist es möglich,
nur Lesezugriff auf Dateien und Ordner zu setzen, damit diese nicht
versehentlich geändert oder gelöscht werden können. Du kannst über die
Dateirechte sogar alle Berechtigungen für einen bestimmten Benutzer
löschen, damit die Datei noch nicht einmal geöffnet werden kann (obwohl
sie noch im Finder sichtbar ist).

Mit dem Befehl CHMOD, englisch für *change mode* – setzt man im UNIX
Umfeld Lese-, Schreib- und Ausführungsrechte von Dateien und
Verzeichnissen. Spätestens, wenn man eine Website auf einem Server
betreut, stolpert man früher oder später über das Thema Dateireichte, da
meistens UNIX bzw. Linux Betriebssysteme für das Website-Hosting
eingesetzt werden.

## Beispiele

Im folgenden Beispiel steht der Parameter `-R` für _rekursiv_. Dank des Schalters ändern sich die Dateirechte im angegebenen Ordner und seinen Unterordnern. So kannst Du die Dateirechte bequem für ganze Verzeichnisbäume ändern.

    chmod -R 755 /images

## Übersichtstabelle: CHMOD Rechte-System

<table>
<caption>CHMOD Rechte-System</caption>
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th>Zugriffsrecht</th>
<th></th>
<th></th>
<th>Oktal</th>
<th>Bedeutung</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Eigentümer</strong></p></td>
<td><p><strong>Gruppe</strong></p></td>
<td><p><strong>Andere</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>rwx</p></td>
<td><p>rwx</p></td>
<td><p>rwx</p></td>
<td><p>777</p></td>
<td><p>Lesbar, schreibbar und ausführbar für alle Benutzer.</p></td>
</tr>
<tr class="odd">
<td><p>rwx</p></td>
<td><p>rwx</p></td>
<td><p>r-x</p></td>
<td><p>775</p></td>
<td><p>Wie 1., aber ohne Schreibrecht für andere Benutzer (z.B. bei PHP-Skript).</p></td>
</tr>
<tr class="even">
<td><p>rwx</p></td>
<td><p>r-x</p></td>
<td><p>r-x</p></td>
<td><p>755</p></td>
<td><p>Wie 1., aber ohne Schreibrecht für andere Benutzer und Benutzer der eigenen Gruppe.</p></td>
</tr>
<tr class="odd">
<td><p>rw-</p></td>
<td><p>rw-</p></td>
<td><p>rw-</p></td>
<td><p>666</p></td>
<td><p>Alle Benutzer dürfen lesen und schreiben.<br />
</p></td>
</tr>
<tr class="even">
<td><p>rw-</p></td>
<td><p>rw-</p></td>
<td><p>r--</p></td>
<td><p>664</p></td>
<td><p>Typischer Standardwert für neue Dateien: Lesbar für alle Benutzer, nicht schreibbar und ausführbar für andere Benutzer.</p></td>
</tr>
<tr class="odd">
<td><p>rw-</p></td>
<td><p>rw-</p></td>
<td><p>---</p></td>
<td><p>660</p></td>
<td><p>Der Dateibesitzer und die Gruppe darf die Datei lesen und schreiben, alle Anderen haben keine Berechtigungen.<br />
</p></td>
</tr>
<tr class="even">
<td><p>rw-</p></td>
<td><p>r--</p></td>
<td><p>r--</p></td>
<td><p>644</p></td>
<td><p>Lesbar für alle Benutzer, nicht schreibbar für andere Benutzer und nicht ausführbar für Benutzer der eigenen Gruppe.</p></td>
</tr>
<tr class="odd">
<td><p>rw-</p></td>
<td><p>r--</p></td>
<td><p>---</p></td>
<td><p>640</p></td>
<td><p>Der Dateibesitzer kann lesen und schreiben, die Gruppe nur schreiben und alle übrigen Benutzer haben keinen Zugriff.</p></td>
</tr>
<tr class="even">
<td><p>rw-</p></td>
<td><p>---</p></td>
<td><p>r--</p></td>
<td><p>604</p></td>
<td><p>Lesbar für alle Benutzer, nicht schreibbar für andere Benutzer und nicht ausführbar für Benutzer der eigenen Gruppe.</p></td>
</tr>
<tr class="odd">
<td><p>rw-</p></td>
<td><p>---</p></td>
<td><p>rw-</p></td>
<td><p>606</p></td>
<td><p>Lesbar für alle Benutzer, nicht schreibbar für andere Benutzer und nicht ausführbar Benutzer der eigenen Gruppe.</p></td>
</tr>
<tr class="even">
<td><p>rw-</p></td>
<td><p>---</p></td>
<td><p>---</p></td>
<td><p>600</p></td>
<td><p>Der Dateibesitzer kann lesen und schreiben, alle übrigen Benutzer haben keinen Zugriff.</p></td>
</tr>
<tr class="odd">
<td><p>r--</p></td>
<td><p>---</p></td>
<td><p>---</p></td>
<td><p>400</p></td>
<td><p>Der Dateibesitzer kann lesen, alle übrigen Benutzer haben keinen Zugriff.</p></td>
</tr>
</tbody>
</table>
