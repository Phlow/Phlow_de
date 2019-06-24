---
subtitle            : FTP
title               : "Filezilla - Anleitung: Dateien hochladen per FTP-Programm"
meta_description    : Diese Videoanleitung erklärt, wie man mit dem kostenlosen FTP-Programm FileZilla  Dateien auf einen Server hochlädt.
image:
    header          : /images/tv/header-tv-1280x277.png
    header_width    : 1280
    header_height   : 277
    thumb           : /images/tv/phlow-tv-filezilla-thumb.jpg
tags:
    - video
    - ftp
    - filezilla
    - ftp programm
video               : https://www.youtube.com/watch?v=ystpUgSaPrA
date                : 2016-02-20
---
Diese Videoanleitung erklärt, wie man mit dem kostenlosen FTP-Programm FileZilla  Dateien auf einen Server hochlädt.
<!-- readmore -->

{{< youtube ystpUgSaPrA >}}

Um Dateien auf einen Server im Internet hochzuladen, benötigt man ein FTP-Programm. Dieses überträgt mittels des File Transfer Protocol die Dateien, z.B. für eine WordPress-Installation. Im Folgenden stellen wir das kostenlose Open Source-Programm FileZilla vor und wie es funktioniert.

## Vorgestellt: Das kostenlose FTP-Programm FileZilla

Den [FTP-Client FileZilla][1] bzw. das FTP-Programm können Sie kostenlos aus dem Internet herunterladen. Bei der Installation unterstützt Sie ein Wizard, folgen Sie einfach seinen Anweisungen.

[![FileZilla Arbeitsoberfläche]({{ site.url }}{{ site.baseurl }}/images/video-filezilla-arbeitsoberflaeche.png)][2]

Nach der Installation ist FileZilla sofort einsatzbereit. Über die Buttons der Navigationsleiste blenden Sie die verschiedenen Fenster schnell ein und aus. Um Platz zu sparen und eine bessere Übersicht zu erhalten, schalten Sie am besten das Nachrichten-Log mit den FTP-Kommandos und die Quickconnect-Leiste aus. Für noch mehr Übersicht verkleinern Sie die Transfer-Statusanzeige.

Diese Ansichten sind nicht wirklich notwendig. Neben den Buttons gibt es auch die Möglichkeit, über das Menü *Ansicht* die Fenster an- oder auszuschalten. Damit FileZilla auf Ihren Webspace zugreifen kann, benötigt das Programm folgende Informationen, die Sie über das Menü *Datei › Servermanager › Neuer Server* eingeben müssen.

![]({{ site.url }}{{ site.baseurl }}/images/video-filezilla-ftp-einstellungen.png)

* Host: Adresse Ihres Webspace
* Benutzer: Benutzername Ihres Webspace
* Passwort: Passwort Ihres Webspace

Diese Informationen erhalten Sie von Ihrem Webhoster. Sollte FileZilla wider Erwarten keine Verbindung zustande bringen, rufen Sie erneut den Servermanager auf und klicken auf das Register *Transfer-Einstellungen*. Wählen Sie anschließend den Transfermodus *Passiver Modus*. Dieser wird von einigen FTP-Servern vorausgesetzt.

Damit FileZilla auch versteckte Dateien anzeigt (z.B. die .htaccess-Datei), müssen Sie die Einstellungen konfigurieren. Dazu wählen Sie im Menü *Server › Auflistung Versteckter Dateien erzwingen*. Ist die Funktion aktiv, erscheint ein Häkchen vor dem Menüpunkt.

Hat sich FileZilla erfolgreich mit Ihrem FTP-Server verbunden, kopieren Sie Dateien und Ordner einfach, indem Sie sie markieren und in das Serverfenster ziehen. Das Gleiche funktioniert auch umgekehrt, wenn Sie Daten vom Server herunterladen wollen. Oder markieren Sie die Dateien und rufen Sie dann das Kontextmenü über die rechte Maustaste auf.

Achten Sie darauf, welche Zugriffsrechte Sie für die Dateien gesetzt haben. Man unterscheidet zwischen Lese-, Schreib- und Ausführungsrechten, die für jede Datei und jedes Verzeichnis festgelegt werden können. Wenn Sie anderen die Erlaubnis geben wollen, eine Datei oder ein Verzeichnis zu lesen, setzen Sie den Status auf ***r*** (für read). Sollen andere eine Datei selbst verändern können, setzen Sie ein ***w*** (für write), und falls der Server eine Datei bzw. ein Programmskript ausführen darf, müssen Sie ein ***e*** (für execute) setzen.

Benutzen Sie die deutsche Version von FileZilla, lautet der jeweilige Status *Lesen* (read), *Schreiben* (write) oder *Ausführen* (execute). Mithilfe der Rechtevergabe lassen sich so Dateien und Verzeichnisse schützen und freigeben. Diese Rechte können für drei Anwenderarten bestimmt werden: für einzelne Benutzer, für Benutzergruppen und für alle Benutzer. Zum Beispiel kann es wünschenswert sein, dass der Server ein Programm ausführen darf, jedoch nicht der normale Besucher der Website.

Solche Rechte regeln Sie über die Berechtigungsstruktur der Dateiattribute. Um mit FileZilla die Zugriffsrechte einer Datei oder eines Ordners zu verändern, markieren Sie die Datei und rufen das Kontextmenü *Dateiattribute* über die rechte Maustaste auf. 



 [1]: http://www.filezilla-project.org
 [2]: {{ site.url }}{{ site.baseurl }}/images/video-filezilla-arbeitsoberflaeche.png
