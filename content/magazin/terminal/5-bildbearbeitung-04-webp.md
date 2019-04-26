---
title           : "WebP-Bilder erstellen und konvertieren"
chapter         : 5
categories      : "Bildbearbeitung"
slug            : webp
---
WebP ist ein modernes Bildformat, das eine hervorragende verlustfreie und verlustbehaftete Kompression für Bilder im Web bietet. Mit WebP kannst Du kleinere Bilddateien herstellen ohne Qualität zu verlieren. Das beschleunigt Deine Websites ungemein.<!-- readmore -->

Entwickelt wurde [WebP von Google](https://developers.google.com/speed/webp/). Das Kommandozeilenprogramm cwebp kodiert Bilder im Format [JPEG]({{< ref "09-bilder-01-02-jpg.md" >}}), [PNG]({{< ref "09-bilder-01-04-png.md" >}}) oder TIFF nach WebP. Dahingegen dekodiert _dwebp_ sie zurück in das PNG-Format.

## WebP installieren mit brew

*webp* installierst Du unkompliziert mit [homebrew]({{< ref "8-terminal-erweitern-01-homebrew.md" >}}).

~~~
$ brew install webp
~~~

## Bilder in WebP-Dateien konvertieren

Der folgende Befehl nimmt ein PNG-Bild und gibt es über den Parameter `-o` an WebP aus. Standardmäßig erzeugt der _cwebp_-Encoder verlustbehaftete WebP-Bilder. Die Qualität der Ausgabe steuerst Du über den Parameter `-q` der Werte von 0 bis 100 erlaubt. Die Standardeinstellung für die verlustbehaftete Qualität ist 75. Das Beispiel setzt die Qualität auf 80.

~~~
cwebp -q 80 original_bild.png -o neues_bild.webp
~~~

## Bilder verlustlos mit `-lossless` nach WebP konvertieren

Mit der Option `-lossless` konvertierst Du Bilder verlustlos in das WebP-Format.

## Mehrere Bilder konvertieren

~~~
find ./ -type f -name '*.jpg' -exec sh -c 'cwebp -q 80 $1 -o "${1%.jpg}.webp"' _ {} \;
~~~


## Weitere interessante Optionen

`-progress`
:   zeige den Kodierungsfortschritt in Prozent an

`-quiet`
:   gebe nichts auf den Bildschirm bei der Kodierung aus



