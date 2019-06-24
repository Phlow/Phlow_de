---
weight          : 002
subtitle        : HTML-Grundlagen
title           : 'Grundgerüst einer HTML-Webseite'
categories      : html-grundlagen
youtube         : _P9hcbMrnpk
slug            : html-dokument-aufbau
---
Eine Webseite ist eine Textdatei mit der Endung *.html* oder *.htm*. HTML-Dateien bilden die Grundlage des Internets.
<!-- readmore -->

In dieser Textdatei stehen nur Zeichen, wie Buchstaben, Zahlen und Sonderzeichen. Da die Datei aus reinen Textzeichen besteht, kannst Du HTML-Webseiten auf jedem Computer mit der simpelsten Textverarbeitung erstellen, öffnen und bearbeiten. Du benötigst also noch nicht einmal einen Texteditor wie [Atom]({{< ref "01-software-03-atom-texteditor.md" >}}).

Zwar kannst Du auch mit großen Textverarbeitungsprogrammen wie Word oder Libre Office HTML-Webseiten erstellen, Du musst dann aber die Datei ausdrücklich als reine Textdatei abspeichern.

Normalerweise speichert z.B. Word in einer Datei nicht nur Buchstaben & Co. ab, sondern auch Informationen wie z.B. genutzte Schriftarten, Schriftgrößen und Farben, Informationen zum Seitenformat der Seiten (z.B. DIN A4) und so weiter. Solche Dateien kann ein Browser nicht verarbeiten, es sei denn Du hast extra eine Erweiterung für einen solchen Fall installiert.

## HTML-Seiten immer UTF-8 codiert speichern

Da es sich um eine reine Textdatei handelt, musst Du die Zeichenkodierung abspeichern. Klingt kompliziert, ist aber einfach. Während Amerikaner z.B. eine Tastatur nutzen ohne ä, ö und ü, nutzen wir Deutschen eine Tastatur, die keine französischen Sonderzeichen hat. Damit eine Webseite in allen Browsern und Sprachen funktioniert, muss das Dokument im [UTF-8-Format](https://de.wikipedia.org/wiki/UTF-8) codiert abgespeichert werden.

Denn UTF-8 umfasst alle wichtigen Zeichen vieler westlicher Sprachen. Im Gegensatz z.B. zu [ASCII](https://de.wikipedia.org/wiki/American_Standard_Code_for_Information_Interchange). Die ASCII-Codierung beinhaltet z.B. keine ü-, ä- und ö-Buchstaben und ist nur für den amerikanischen Sprachraum gedacht.

## Grundgerüst einer modernen HTML5-Webseite

Eine vollkommen leere HTML-Webseite sieht so aus:

{{< highlight html >}}
<!doctype html>
<html lang="de">
  <head>
    <title></title>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
  </head>
  <body>
  </body>
</html>
{{< /highlight >}}

Auf den ersten Blick sieht der obige Text wahrscheinlich verwirrend aus. Es ist aber relativ einfach und ich erkläre Dir jetzt schrittweise, was die jeweiligen Zeilen bedeuten.

Zuerst aber öffnest Du erst einmal den [Texteditor Atom]({{< ref "01-software-03-atom-texteditor.md" >}}) und erstellst eine leere Textdatei mit *File > New File*. Anschließend speicherst Du das leere Dokument mit *File > Save* auf Deinem Schreibtisch unter dem Dateinamen *vorlage.html* ab.

Wenn Du jetzt auf die Datei *vorlage.html* doppelklickst, sollte sich automatisch Dein Standardbrowser öffnen. Das Ergebnis gähnt Dich an: Nichts.

Schreib jetzt einfach mal den Satz *Hallöchen Welt!* in das *vorlage.html*-Dokument, speichere die Datei ab und lade Sie im Browser neu. Sie sollte so wie die Abbildung aussehen.

{{< amp/fig src="/images/webdesign/html-grundlagen-textdatei.png" figcaption="So sieht eine Textdatei aus, wenn Du Sie im Browser öffnest." width="480" height="344" layout="fixed" >}}

Der Text sollte jetzt unformatiert angezeigt werden. Herzlichen Glückwunsch, Du hast gerade die häufigste Aktion eines Webdesigners ausgeführt:

1. HTML-Dokument ändern
1. Browser aktualisieren
1. Änderungen prüfen

## Ein HTML-Befehl heißt Tag

An dieser Stelle weiß der Browser immer noch nicht, dass es sich um ein HTML-Dokument handelt. Schließlich hast Du noch keine HTML-Befehle in die Textdatei gehackt. Die HTML-Befehle nennt man HTML-Tags, kurz Tags bzw. im Singular das Tag.

Damit der Browser überhaupt weiß, dass er Deine Textdatei als HTML-Datei behandeln soll, musst Du dem Browser das erst einmal »klarmachen«. Das geschieht mit:

{{< highlight html >}}
<!doctype html>
{{< /highlight >}}

Als nächstes öffnest Du das HTML-Dokument mit dem Befehl `<html>` und schließt es gleich wieder mit `</html>`. Fast alle HTML-Befehle müssen wieder geschlossen werden. Diese Information benötigt der Browser, damit er weiß, dass das Dokument z.B. jetzt zuende ist. Deine *vorlage.html*-Datei sollte jetzt so aussehen:

{{< highlight html >}}
<!doctype html>
<html>
</html>
{{< /highlight >}}

Damit der Browser Dein Dokument als deutschsprachiges Dokument identifizieren kann, muss Du dem `<html>`-Befehl ein so genanntes Attribut hinzufügen. Dieses lautet einfach `lang="de"`. Hierbei steht *lang* für *language*, also Sprache, und das Kürzel *de* für den deutschen Sprachraum. Baust Du englischsprachige Webseiten, würde das Attribut `lang="en"` lauten.

Dein Dokument sieht jetzt bereits so aus:

{{< highlight html >}}
<!doctype html>
<html lang="de">
</html>
{{< /highlight >}}

## Zwei Teile einer HTML-Webseiten

Eine Webseite besteht aus den beiden Teilen `<head>` und `<body>`. Im `<head>`-Bereich stehen Metainformationen und der `<body>`-Bereich ist Teil Deines Dokumentes, der im Browserfenster angezeigt wird.

Metainformationen sind Informationen über ein Dokument. So speichern z.B. viele Smartphones in den Metainformationen zu einem Bild die Geodaten, Belichtungszeit oder Modelltyp des Smartphones ab. Bei HTML-Dokumenten speicherst Du z.B. Metainformationen wie den Titel, eine Kurzbeschreibung und ähnliches ab.

Deine *vorlage.html*-Datei sieht jetzt wie folgt aus:

{{< highlight html >}}
<!doctype html>
<html lang="de">
  <head>
  </head>
  <body>
  </body>
</html>
{{< /highlight >}}

Die beiden Tags `<head>` und `<body>` habe ich im obigen Beispiel mit zwei Leerzeichen eingerückt. Der Browser ignoriert die Leerzeichen, bei der Programmierung hilft es aber ungemein Befehle einzurücken. Der Sinn dahinter ist eine bessere Übersicht und du erkennst leichter die Verschachtelung der Befehle. Wenn es sich Dir an dieser Stelle noch nicht erschließt, dann warte mal ab, wie unser Dokument noch wächst ;)

## Metainformationen einer HTML-Webseite

Damit der Browser die richtige Codierung für Dein HTML-Dokument nutzt, bestimmen wir über ein Meta-Tag die Codierung in Form von UTF-8.

Die Meta-Tags gehören zu den wenigen Tags, die nicht wieder geschlossen werden müssen, da die Informationen dem Browser über die Attribute übergeben werden. Das Meta-Tag für die Codierung sieht dann so aus:

{{< highlight html >}}
<meta charset="utf-8">
{{< /highlight >}}

Als nächstes benötigen wir ein weiteres Meta-Tag für alte Versionen des Internet Explorers. Der Internet Explorer von Microsoft hat eine lange Geschichte, in welcher er uns Webdesigner immer wieder zur Verzweifelung gebracht hat, weil alte Versionen des Internet Explorers oft Befehle nicht korrekt interpretiert haben.

Damit das für Dein Dokument nicht passiert, befehlen wir dem Internet Explorer – es gibt viele verschiedene Versionen – die [Rendering Engine](https://de.wikipedia.org/wiki/HTML-Renderer) namens *Edge* zu nutzen. Liest der Internet Explorer folgenden Meta-Befehl, baut er die Website mit [Edge](https://de.wikipedia.org/wiki/Microsoft_Edge) zusammen, was nur von Vorteil ist.

{{< highlight html >}}
<meta http-equiv="x-ua-compatible" content="ie=edge">
{{< /highlight >}}

Als nächstes sichern wir mit dem folgenden Meta-Tag ab, dass unsere Webseite als responsive Webseite aufgebaut wird. Dieses Meta-Tag brauchst Du später, wenn es darum geht, die Webseite für alle möglichen Fenstergrößen auch – *[viewport](https://de.wikipedia.org/wiki/Viewport)* genannt – zu optimieren.

{{< highlight html >}}
<meta name="viewport" content="width=device-width, initial-scale=1">
{{< /highlight >}}

Jetzt sieht die Vorlage für die nächsten Webseiten, die Du später baust schon recht komplex aus. Wichtig ist, dass Du verstehst, was die einzelnen Tags bewirken. Was Du Dir aber nicht merken musst, ist die genaue Schreibweise. Denn ich empfehle Dir diese Vorlage für die kommenden Webseiten jeweils zu duplizieren und dann zu ergänzen. Das spart Dir vor allem auch Zeit. Unsere fast fertige Vorlage sieht jetzt so aus:

{{< highlight html >}}
<!doctype html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
  </body>
</html>
{{< /highlight >}}

## Die wichtigsten Tags für die Suchmaschinenoptimierung

Damit die Vorlage perfekt wird, müssen wir die zwei wichtigsten HTML-Befehle für die Suchmaschinenoptimierung auch SEO (englisch für Search Engine Optimization) genannt noch einbauen. Das sind die beiden Befehle `<title>` und `<meta name="description" content="">`.

### Jedes HTML-Dokument benötigt einen Titel

Jede Webseite braucht eine individuelle Überschrift. Der Befehl dafür lautet `<title>`. Aus diesem Tag bedienen sich auch Suchmaschinen, um in den Suchergebnissen den Titel der jeweiligen Website anzuzeigen.

{{< amp/fig src="/images/webdesign/grundlagen-html-title-description.png" figcaption="Der Titel in den Suchergebnissen ergibt sich aus den Informationen des `<title>`-Tags" width="769" height="240" >}}

### Jedes HTML-Dokument benötigt eine Kurzbeschreibung

Das Tag `<meta name="description" content="">` für die Kurzbeschreibung ist nicht zwingend notwendig. Wenn Du aber Deine Webseiten für Google & Co. optimieren willst – _und das solltest Du_, dann texte eine Kurzbeschreibung. Diese sollte nicht zu kurz sein, sollte aber auch nicht mehr als maximal 150 Zeichen umfassen.

## Die fertige HTML-Vorlage

{{< highlight html >}}
<!doctype html>
<html lang="de">
  <head>
    <title></title>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
  </head>
  <body>
  </body>
</html>
{{< /highlight >}}

{{< info >}}
Die Startseite einer Website benennst Du mit *index.html*. Das ist die erste Datei die ein Server sucht, wenn man z.B. eine Adresse wie _https://phlow.de/_ eingibt.
{{< /info >}}

{{< success >}}
**Übung:** Erstelle eine dritte Webseite für das Impressum und benenne die Datei mit *impressum.html*. Bearbeite das &lt;title&gt;-Tag mit Impressum und verlink die neue Webseite mit den beiden anderen.
{{< /success >}}
