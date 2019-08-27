---
title           : 'Base64-Bilder: Konvertieren und Einbauen'
subtitle        :  Bilder in HTML & CSS speichern
categories      : bilder
weight          : 0910
image:
  header                  : /images/webdesign/jpg-bildformat_21_9.jpg
  caption                 : Foto von Alexandru Zdrobău
  url                     : https://instagram.com/alexandru_zdrobau
slug            : base64-bilder
---
Bilder im Base64-Format bestehen aus einer Zeichenfolge im [ASCII](https://de.wikipedia.org/wiki/American_Standard_Code_for_Information_Interchange)-Format. Dadurch kannst Du Base64-enkodierte Bilder direkt in HTML-Dokumente und CSS-Dateien einbauen – z.B. um sie als Kachel für Hintergründe zu nutzen. Der Vorteil bei dieser Bilddatei-Variante: eine externe Bilddatei muss der Browser nicht laden. Sie ist sofort »da«.
<!-- readmore -->

{{< toc >}}

[Base64](https://de.wikipedia.org/wiki/Base64) ist eine Möglichkeit, Binärdaten in einer ASCII-Zeichenfolge darzustellen. Das bedeutet, dass ein Bild im Browser nicht über eine Binärdatei wie eine JPG- oder GIF-Bild eingebunden wird, sondern der Browser aus einer Zeichenfolge das Bild direkt berechnet. Diese Base64-kodierten Bilder sehen als Zeichenfolge recht seltsam aus:

{{< amp/fig src="/images/webdesign/base64-beispiel-831x464.png" figcaption="Dieses Base64-enkodierte Bild kann direkt im HTML-Dokument eingebaut werden" width="831" height="464" >}}

Der Vorteil dieser Technik: externe Bilder müssen nicht als Bilddatei nachgeladen werden, sondern können direkt im HTML-Dokument oder in der CSS-Datei genutzt werden. Je nachdem lädt dadurch die jeweilige Webseite schneller.

Generell nutzen Webdesigner Base64-Bilder jedoch eher selten. Denn Base64-Bilder blasen herkömmliche Bilddateien um ca. 30-36% auf.

## Sinnvolle Beispiele für Base64-Bilder

Dahingegen bieten sich Base64-Bilder als interessante Variante an, wenn es um den Einsatz einer sich wiederholenden Kachel als Hintergrundgrafik dreht.

Die folgende [Kachel von Evan Eckard](http://www.dinpattern.com/2010/07/01/subliminal/) habe ich zuerst von einem GIF in ein Base64-Bild mit dem Online-Konverter unter [www.base64-image.de](https://www.base64-image.de/) konvertiert.

<figure>
<img src="data:image/gif;base64,R0lGODlhTwARANUAAMDK07/K0rK/ybzH0LbDzLG+yMLM1bPAybPAysDL1LnFzsLN1b7J0bC+yLbCy7XBy7TBy7K/yL3I0bC9yLvGz7fDzbrGz73J0brGzrzI0bjEzb/J0bfDzLXCy7LAybG/yLnEzrTAy7nGzrjDzbzG0LzI0LjEzrTAyrC9x7bDy6+9x7/J0sHL1MHM1MDL07/K08LM1MPN1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABPABEAAAb/QNhqgFFoCEiORoEZrGCxaGzRCgCEkIIFCmO9ErCFa0A4RA6IhwPp6EAQAkHIxOACXtCYK9UAwWBWeVJwEQJoIQ8PJwgHAoUIFRKCMC94LSMTHHmULyxQBi0bAwoVBA6nBBoYGXhRMC4vLnkrjQMLLAFgUi4WaxgSslJSMAASIgQRDQgDmy4BLTEKDQ4vrgkBX3/C28IwLbAv0FEDhnUAz7sayQjbBn9/BtsuFA8FEBJSLCssBuQIG8O8VHLBosW7gy0S3HkBoEW8GDAwTLtSKU8LBY4i/WEBrpJHjy4MxoMxIIsGFlFaMBSCYAIJQe4SLvxYCQBBbbsIqNDwZ2UU/wZZKqxwhY2gwYPeOL7ApqsFhgkQhkKs6IJDBAJSuyE9uGAbSUYUvK1IEK+fsgvuiD0RxG2Ytxcrgkk44GGAK1gGKTQCUa2tX1cXHBR4UAdvyhENCMhSGZftX2ELiOWi5KCBgigGvLBY8IJAAw8ESrh47GqFhXoCtnDK4wJCAxE9O7FNi2vFimfwuK2GUSETyhgtGsdgMALOgQcVRAy4wGAFAwkUFBA44UEABAsoV0e5cKBAiRgJYrHNAOLBgQ8F0qv/cKCDAgmehjkzaCFCVFeVHALPIP1NozhxoIGcBRtwAUt8C1BgXYEurCAOUQ0c4AAIFgwwQAYZWGiBCR0cMP9BAQRcIIgXsjAQxwWu4BJOMwEwcIEEGUhwwQrhDJMAjZsogAIBnlS0CwUhTCDcX69soICHHUiC3xUBPPCBBTZWAkZu20T2RwvnrBiFC4Ip8EcAweiBgQcTPEACRO+0wMKaLRyFUwsDhJBYAPhZUkEBFTzoTUc2rblmAi7MNKUUDCAQwQCZBbAZRAMggOcTetAkKUgGQaTXodbgpsAEHTDgVVIuBAqATQl4AsNDrlAQQQTmtAIRBwV0OkUXN4XBjZUsLBTMC655GYU+/FyAwAcKPEhaWxsIxoEsPsbQ5AReUrFUX8e6opJ4MIBQgAOjTSULABo0IAAGYVYLwwYcTIA9QFiUXBFFBh4ckMFU4nVVrTDu5LfAAB8gIJV2DBCQHgEUMACAqae+44wECgR5gAIu3DLWSBQ08AAesJQbBAA7" alt="" width="79" height="17">
<figcaption>Kleine Base64-enkodierte Kachel für den Hintergrund</figcaption>
</figure>

Jetzt kann ich die Grafik unkompliziert mit CSS als großflächige Hintergrundgrafik einbauen. Um das Bild mit Hilfe des `<img>`-Tags einzubauen, benutzt Du den folgenden Code:

~~~
<img src="data:image/gif;base64,R0lGODlhTwARANUAAMDK07/K0rK/ybzH0LbDzLG+yMLM1bPAybPAysDL1LnFzsLN1b7J0bC+yLbCy7XBy7TBy7K/yL3I0bC9yLvGz7fDzbrGz73J0brGzrzI0bjEzb/J0bfDzLXCy7LAybG/yLnEzrTAy7nGzrjDzbzG0LzI0LjEzrTAyrC9x7bDy6+9x7/J0sHL1MHM1MDL07/K08LM1MPN1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABPABEAAAb/QNhqgFFoCEiORoEZrGCxaGzRCgCEkIIFCmO9ErCFa0A4RA6IhwPp6EAQAkHIxOACXtCYK9UAwWBWeVJwEQJoIQ8PJwgHAoUIFRKCMC94LSMTHHmULyxQBi0bAwoVBA6nBBoYGXhRMC4vLnkrjQMLLAFgUi4WaxgSslJSMAASIgQRDQgDmy4BLTEKDQ4vrgkBX3/C28IwLbAv0FEDhnUAz7sayQjbBn9/BtsuFA8FEBJSLCssBuQIG8O8VHLBosW7gy0S3HkBoEW8GDAwTLtSKU8LBY4i/WEBrpJHjy4MxoMxIIsGFlFaMBSCYAIJQe4SLvxYCQBBbbsIqNDwZ2UU/wZZKqxwhY2gwYPeOL7ApqsFhgkQhkKs6IJDBAJSuyE9uGAbSUYUvK1IEK+fsgvuiD0RxG2Ytxcrgkk44GGAK1gGKTQCUa2tX1cXHBR4UAdvyhENCMhSGZftX2ELiOWi5KCBgigGvLBY8IJAAw8ESrh47GqFhXoCtnDK4wJCAxE9O7FNi2vFimfwuK2GUSETyhgtGsdgMALOgQcVRAy4wGAFAwkUFBA44UEABAsoV0e5cKBAiRgJYrHNAOLBgQ8F0qv/cKCDAgmehjkzaCFCVFeVHALPIP1NozhxoIGcBRtwAUt8C1BgXYEurCAOUQ0c4AAIFgwwQAYZWGiBCR0cMP9BAQRcIIgXsjAQxwWu4BJOMwEwcIEEGUhwwQrhDJMAjZsogAIBnlS0CwUhTCDcX69soICHHUiC3xUBPPCBBTZWAkZu20T2RwvnrBiFC4Ip8EcAweiBgQcTPEACRO+0wMKaLRyFUwsDhJBYAPhZUkEBFTzoTUc2rblmAi7MNKUUDCAQwQCZBbAZRAMggOcTetAkKUgGQaTXodbgpsAEHTDgVVIuBAqATQl4AsNDrlAQQQTmtAIRBwV0OkUXN4XBjZUsLBTMC655GYU+/FyAwAcKPEhaWxsIxoEsPsbQ5AReUrFUX8e6opJ4MIBQgAOjTSULABo0IAAGYVYLwwYcTIA9QFiUXBFFBh4ckMFU4nVVrTDu5LfAAB8gIJV2DBCQHgEUMACAqae+44wECgR5gAIu3DLWSBQ08AAesJQbBAA7" alt="" width="79" height="17">
~~~

Spannender gestaltet sich aber die CSS-Variante:

~~~
url('data:image/gif;base64,R0lGODlhTwARANUAAMDK07/K0rK/ybzH0LbDzLG+yMLM1bPAybPAysDL1LnFzsLN1b7J0bC+yLbCy7XBy7TBy7K/yL3I0bC9yLvGz7fDzbrGz73J0brGzrzI0bjEzb/J0bfDzLXCy7LAybG/yLnEzrTAy7nGzrjDzbzG0LzI0LjEzrTAyrC9x7bDy6+9x7/J0sHL1MHM1MDL07/K08LM1MPN1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABPABEAAAb/QNhqgFFoCEiORoEZrGCxaGzRCgCEkIIFCmO9ErCFa0A4RA6IhwPp6EAQAkHIxOACXtCYK9UAwWBWeVJwEQJoIQ8PJwgHAoUIFRKCMC94LSMTHHmULyxQBi0bAwoVBA6nBBoYGXhRMC4vLnkrjQMLLAFgUi4WaxgSslJSMAASIgQRDQgDmy4BLTEKDQ4vrgkBX3/C28IwLbAv0FEDhnUAz7sayQjbBn9/BtsuFA8FEBJSLCssBuQIG8O8VHLBosW7gy0S3HkBoEW8GDAwTLtSKU8LBY4i/WEBrpJHjy4MxoMxIIsGFlFaMBSCYAIJQe4SLvxYCQBBbbsIqNDwZ2UU/wZZKqxwhY2gwYPeOL7ApqsFhgkQhkKs6IJDBAJSuyE9uGAbSUYUvK1IEK+fsgvuiD0RxG2Ytxcrgkk44GGAK1gGKTQCUa2tX1cXHBR4UAdvyhENCMhSGZftX2ELiOWi5KCBgigGvLBY8IJAAw8ESrh47GqFhXoCtnDK4wJCAxE9O7FNi2vFimfwuK2GUSETyhgtGsdgMALOgQcVRAy4wGAFAwkUFBA44UEABAsoV0e5cKBAiRgJYrHNAOLBgQ8F0qv/cKCDAgmehjkzaCFCVFeVHALPIP1NozhxoIGcBRtwAUt8C1BgXYEurCAOUQ0c4AAIFgwwQAYZWGiBCR0cMP9BAQRcIIgXsjAQxwWu4BJOMwEwcIEEGUhwwQrhDJMAjZsogAIBnlS0CwUhTCDcX69soICHHUiC3xUBPPCBBTZWAkZu20T2RwvnrBiFC4Ip8EcAweiBgQcTPEACRO+0wMKaLRyFUwsDhJBYAPhZUkEBFTzoTUc2rblmAi7MNKUUDCAQwQCZBbAZRAMggOcTetAkKUgGQaTXodbgpsAEHTDgVVIuBAqATQl4AsNDrlAQQQTmtAIRBwV0OkUXN4XBjZUsLBTMC655GYU+/FyAwAcKPEhaWxsIxoEsPsbQ5AReUrFUX8e6opJ4MIBQgAOjTSULABo0IAAGYVYLwwYcTIA9QFiUXBFFBh4ckMFU4nVVrTDu5LfAAB8gIJV2DBCQHgEUMACAqae+44wECgR5gAIu3DLWSBQ08AAesJQbBAA7')
~~~

Das Base64-Bild baust Du entweder über Deine externe CSS-Datei ein oder benutzt das `style`-Attribut z.B. in einem `<div>`. Damit sich die Grafik wiederholt, nutzt Du die CSS-Eigenschaft `background-repeat: repeat`. Das Bild baust Du direkt mit `background-image: url('')`. Damit sich das Bild in dem unteren Beispiel wiederholt, bekommt das `<div>`-Tag noch eine Breite mit `width: 300px` und eine Höhe mit `height:200px`. Der Code für das fertige Beispiel sieht dann so aus:

~~~
<div style="width: 300px; height: 200px; background-image: url('data:image/gif;base64,R0lGODlhTwARANUAAMDK07/K0rK/ybzH0LbDzLG+yMLM1bPAybPAysDL1LnFzsLN1b7J0bC+yLbCy7XBy7TBy7K/yL3I0bC9yLvGz7fDzbrGz73J0brGzrzI0bjEzb/J0bfDzLXCy7LAybG/yLnEzrTAy7nGzrjDzbzG0LzI0LjEzrTAyrC9x7bDy6+9x7/J0sHL1MHM1MDL07/K08LM1MPN1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABPABEAAAb/QNhqgFFoCEiORoEZrGCxaGzRCgCEkIIFCmO9ErCFa0A4RA6IhwPp6EAQAkHIxOACXtCYK9UAwWBWeVJwEQJoIQ8PJwgHAoUIFRKCMC94LSMTHHmULyxQBi0bAwoVBA6nBBoYGXhRMC4vLnkrjQMLLAFgUi4WaxgSslJSMAASIgQRDQgDmy4BLTEKDQ4vrgkBX3/C28IwLbAv0FEDhnUAz7sayQjbBn9/BtsuFA8FEBJSLCssBuQIG8O8VHLBosW7gy0S3HkBoEW8GDAwTLtSKU8LBY4i/WEBrpJHjy4MxoMxIIsGFlFaMBSCYAIJQe4SLvxYCQBBbbsIqNDwZ2UU/wZZKqxwhY2gwYPeOL7ApqsFhgkQhkKs6IJDBAJSuyE9uGAbSUYUvK1IEK+fsgvuiD0RxG2Ytxcrgkk44GGAK1gGKTQCUa2tX1cXHBR4UAdvyhENCMhSGZftX2ELiOWi5KCBgigGvLBY8IJAAw8ESrh47GqFhXoCtnDK4wJCAxE9O7FNi2vFimfwuK2GUSETyhgtGsdgMALOgQcVRAy4wGAFAwkUFBA44UEABAsoV0e5cKBAiRgJYrHNAOLBgQ8F0qv/cKCDAgmehjkzaCFCVFeVHALPIP1NozhxoIGcBRtwAUt8C1BgXYEurCAOUQ0c4AAIFgwwQAYZWGiBCR0cMP9BAQRcIIgXsjAQxwWu4BJOMwEwcIEEGUhwwQrhDJMAjZsogAIBnlS0CwUhTCDcX69soICHHUiC3xUBPPCBBTZWAkZu20T2RwvnrBiFC4Ip8EcAweiBgQcTPEACRO+0wMKaLRyFUwsDhJBYAPhZUkEBFTzoTUc2rblmAi7MNKUUDCAQwQCZBbAZRAMggOcTetAkKUgGQaTXodbgpsAEHTDgVVIuBAqATQl4AsNDrlAQQQTmtAIRBwV0OkUXN4XBjZUsLBTMC655GYU+/FyAwAcKPEhaWxsIxoEsPsbQ5AReUrFUX8e6opJ4MIBQgAOjTSULABo0IAAGYVYLwwYcTIA9QFiUXBFFBh4ckMFU4nVVrTDu5LfAAB8gIJV2DBCQHgEUMACAqae+44wECgR5gAIu3DLWSBQ08AAesJQbBAA7')"></div>
~~~

Und das Endergebnis so:

<div style="width: 300px; height: 200px; background-image: url('data:image/gif;base64,R0lGODlhTwARANUAAMDK07/K0rK/ybzH0LbDzLG+yMLM1bPAybPAysDL1LnFzsLN1b7J0bC+yLbCy7XBy7TBy7K/yL3I0bC9yLvGz7fDzbrGz73J0brGzrzI0bjEzb/J0bfDzLXCy7LAybG/yLnEzrTAy7nGzrjDzbzG0LzI0LjEzrTAyrC9x7bDy6+9x7/J0sHL1MHM1MDL07/K08LM1MPN1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABPABEAAAb/QNhqgFFoCEiORoEZrGCxaGzRCgCEkIIFCmO9ErCFa0A4RA6IhwPp6EAQAkHIxOACXtCYK9UAwWBWeVJwEQJoIQ8PJwgHAoUIFRKCMC94LSMTHHmULyxQBi0bAwoVBA6nBBoYGXhRMC4vLnkrjQMLLAFgUi4WaxgSslJSMAASIgQRDQgDmy4BLTEKDQ4vrgkBX3/C28IwLbAv0FEDhnUAz7sayQjbBn9/BtsuFA8FEBJSLCssBuQIG8O8VHLBosW7gy0S3HkBoEW8GDAwTLtSKU8LBY4i/WEBrpJHjy4MxoMxIIsGFlFaMBSCYAIJQe4SLvxYCQBBbbsIqNDwZ2UU/wZZKqxwhY2gwYPeOL7ApqsFhgkQhkKs6IJDBAJSuyE9uGAbSUYUvK1IEK+fsgvuiD0RxG2Ytxcrgkk44GGAK1gGKTQCUa2tX1cXHBR4UAdvyhENCMhSGZftX2ELiOWi5KCBgigGvLBY8IJAAw8ESrh47GqFhXoCtnDK4wJCAxE9O7FNi2vFimfwuK2GUSETyhgtGsdgMALOgQcVRAy4wGAFAwkUFBA44UEABAsoV0e5cKBAiRgJYrHNAOLBgQ8F0qv/cKCDAgmehjkzaCFCVFeVHALPIP1NozhxoIGcBRtwAUt8C1BgXYEurCAOUQ0c4AAIFgwwQAYZWGiBCR0cMP9BAQRcIIgXsjAQxwWu4BJOMwEwcIEEGUhwwQrhDJMAjZsogAIBnlS0CwUhTCDcX69soICHHUiC3xUBPPCBBTZWAkZu20T2RwvnrBiFC4Ip8EcAweiBgQcTPEACRO+0wMKaLRyFUwsDhJBYAPhZUkEBFTzoTUc2rblmAi7MNKUUDCAQwQCZBbAZRAMggOcTetAkKUgGQaTXodbgpsAEHTDgVVIuBAqATQl4AsNDrlAQQQTmtAIRBwV0OkUXN4XBjZUsLBTMC655GYU+/FyAwAcKPEhaWxsIxoEsPsbQ5AReUrFUX8e6opJ4MIBQgAOjTSULABo0IAAGYVYLwwYcTIA9QFiUXBFFBh4ckMFU4nVVrTDu5LfAAB8gIJV2DBCQHgEUMACAqae+44wECgR5gAIu3DLWSBQ08AAesJQbBAA7')"></div>

## Weiteres Beispiel: Alternative Aufzählungszeichen für Listenelemente

{{< amp/fig src="/images/webdesign/base64-beispiel-liste-189x146.png" figcaption="Liste mit alternativen Aufzählungszeichen für Listenelemente" width="189" height="146" layout="fixed" class="border-solid p2 radius" >}}

Um anstelle der Standard-Aufzählungszeichen für `<li>`-Elemente alternative Grafiken einzubauen, eignen sich Base64-Bilder hervorragend: siehe diese [Beispiel-Liste mit grünen Häckchen]({{ '/beispiel/base64-liste/' | absolute_url }}) –  Die Grafiken sind klein, wiederholen sich und erscheinen direkt mit der geladenen CSS-Datei.

Der einfache Code sieht so aus:

~~~
ul {
  list-style: none; /* Aufzählungszeichen ausstellen */
  margin: 0;
  padding: 0;
}
li {
  background:
    url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAAlwSFlzAAALEwAACxMBAJqcGAAAAVlpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDUuNC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iPgogICAgICAgICA8dGlmZjpPcmllbnRhdGlvbj4xPC90aWZmOk9yaWVudGF0aW9uPgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KTMInWQAAAoxJREFUOBFtU79PFFEQnnnv7e4dhg7iHc1hoY1/A9FES9GggvYmEO6CkcKe2phoAndGahshgUQpTfQfMEFbGij0TiQWErm93ffDb/ZYYoib7O3tznwz3zfzPabTa2WFDG47/5qiKK/NBOabCDVOwwccwoc86m2vL1Be5kqM5Wd2g/TmHLlme2KaKKwmVdWQSPBBwsRKXogGfX+At6VO6/v7EsNltVan/iSuqhc2C+SszwkUhuVRQeowB6XBLmbKUr/cbnZfCrZgIJ2TEX43OPGuyCXS0vnc5VBSg1QAQ8764bYwYdFsbH1PG25YGxwq/gfMeZRQlA/CNxQdixJO8H/fmu4VJQMTzc5SzqEgbfE7FI/sECiLqwwwfbVm4lLgcA9gwrdJwapi2oUQTyZhhWIGILlkChmkxVnf72qXTq0vfM6JVFTEpAs2pfDSEOXagExOO4O+e4pBSUkHqvHgJHzRbnBt9fGv34ud2mxkaBsx8sMNNaQABoxsSHA6m++0es99Hhaqo8pkadgdreZTJdhoteEsdDLkFqzBB/gDUc4qwEDxGxnqWrO73j8ODyPDd549OjqWzgUYTCHPBU+q8Aaw3FqrzcUj+i1MklYuqApW+Wn8sHsDO/bCrtmu3Ye8TScLBhifsKWQJ1UdZSfugRq/2tsSh+mIK+kf34eZrh+O1z8KuPWqPqOj82CyMi/BjB/1tgol/xhJumZRhSt5GvZAt6ENxd6VnckirpIRpbLUTrcXf+wosaM4Ct2XJSBMAE5Z0WVUN9gQVie+CDnMZiRHcgV8ZuXyYLReXbwVglpNKmoS48JhGm7o7DClfp/ZLwm4xJwug0iq4bby/DlWu1sY7NxxFs1ljjzBjP4C66teRfzdP4YAAAAASUVORK5CYII=')
    no-repeat
    left center;
  padding: 5px 0 5px 25px;
}
~~~

## Pro und Contra Base64-Bilder

|  Vorteile   |  Nachteile   |
|---|---|
| Bilder in HTML- und CSS-Dateien abspeichern                      | Vergrößern HTML- und CSS-Dateien |
|   | Base64-Bilder sind ca. 30% größer als das Original |
|   | Bildaufbau dauert evtl. auf mobilen Geräten länger |

## Links zu Konvertern und kostenlosen Kacheln und Mustern

* [Online Konverter für Base64-Bilder](https://www.base64-image.de/)
* Verschiedene Websites mit kostenlosen Mustern
  * [Pattern Library](http://thepatternlibrary.com/)
  * [DINPattern](http://www.dinpattern.com/)
  * [Subtle Patterns](https://www.toptal.com/designers/subtlepatterns/)
