---
title           : "du: Größe von Ordnern anzeigen"
chapter         : 2
categories      : "Ordner und Dateien"
description     : 'Um die Größe eines Ordners anzuzeigen nutzt man den Befehl du (disk usage). Die Ausgabe (Byte, kb, MB,…) lässt sich dabei steuern.'
slug            : ordner-groesse-anzeigen
---
Um die Größe eines Ordners anzuzeigen nutzt man den Befehl `du`. `du`
gibt Informationen über die Festplattennutzung von Dateien und
Verzeichnissen aus. Weil `du` über viele Parameteroptionen verfügt,
kannst Du die Ergebnisse in vielen Formaten ausgeben lassen.
<!-- readmore -->

Gibst Du lediglich ein…

    $ du

…erhälst Du eine nicht sehr lesbare Ausgabe:

    1472  ./guetzli
    2880  ./imagemin
    7264  .

Um die Ausgabe verständlicher zu machen, änderst Du die Ausgabe mit der
Option `-h`, die für *human readable format* steht.

    $ du -h

Und das sieht so aus:

    736K  ./guetzli
    1,4M  ./imagemin
    3,5M  .

Die Verwendung der Option `-a` mit dem Befehl `du` zeigt die
Festplattennutzung aller Dateien und Verzeichnisse an.

    $ du -a

Das Ergebnis sieht dann so aus:

    16  ./.DS_Store
    480 ./bild-01.jpg
    472 ./bild-02.jpg
    280 ./bild-03.jpg
    232 ./guetzli/bild-01.jpg
    200 ./guetzli/bild-02.jpg
    128 ./guetzli/bild-03.jpg
    1472  ./guetzli
    480 ./imagemin/bild-01.jpg
    472 ./imagemin/bild-02.jpg
    264 ./imagemin/bild-03.jpg
    2880  ./imagemin
    7264  .

Die Verwendung der Option `-a` zusammen mit `-h` zeigt die
Festplattennutzung aller Dateien und Ordner besser lesbar dar. Die
folgende Ausgabe ist einfacher zu verstehen, da sie die Dateien in
Kilobyte, Megabyte usw. anzeigt.

    8,0K  ./.DS_Store
    240K  ./bild-01.jpg
    236K  ./bild-02.jpg
    140K  ./bild-03.jpg
    116K  ./guetzli/bild-01.jpg
    100K  ./guetzli/bild-02.jpg
     64K  ./guetzli/bild-03.jpg
    736K  ./guetzli
    240K  ./imagemin/bild-01.jpg
    236K  ./imagemin/bild-02.jpg
    132K  ./imagemin/bild-03.jpg
    1,4M  ./imagemin
    3,5M  .

Um die Zusammenfassung der Festplattennutzung des Verzeichnisbaums
zusammen mit seinen Teilbäumen nur in Megabytes (MB) zu erhalten.
Verwendest Du die Option `-mh` wie folgt. `-m` zählt die Blöcke in
MB-Einheiten und `-h` steht wiederum für das menschenlesbare Format.

    du -mh

…ergibt…

    736K  ./guetzli
    1,4M  ./imagemin
    3,5M  .
