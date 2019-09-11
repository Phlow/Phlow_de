---
subtitle                  : CSS
title                     : Kleine CSS-Rezepte
categories                : anhang
slug                      : /css-rezepte/
---
CSS – insbesondere CSS3 – bietet zahlreiche Möglichkeiten HTML-Inhalte zu gestalten. In unserer CSS-Sammlung finden Sie CSS-Beispiele für die tägliche Anwendungen. Viele benutzen wir auch für unser Phlow Magazin.
<!-- readmore -->

## CSS-Schatten für Texte

Diese Anleitung erklärt das CSS-Element <code>text-shadow</code> vor und zeigt nützliche und außergewöhnliche Beispiele.

Der Aufbau von text-shadow

{{< highlight html >}}
div { text-shadow: 3px 3px 4px #777 }
      ^            ^   ^   ^   ^  
      |            |   |   |   |  
      |            |   |   |   |
      |            |   |   |   +- Schattenfarbe
      |            |   |   |
      |            |   |   +- Verlaufs-Radius des Schattens
      |            |   |
      |            |   +- Vertikaler Versatz
      |            |
      |            +- Horizontaler Versatz
      | 
      +- CSS3-Eigenschaft text-shadow 
{{< /highlight >}}

## Beispiele

<p style="text-shadow: 0 2px 3px rgba(0,0,0,.4);">Black Shadow</p>
{{< highlight html >}}
.shadow-black-2   {text-shadow: 0 2px 3px rgba(0,0,0,.4); }
{{< /highlight >}}


<p style="text-shadow: rgba(0, 0, 0, 0.498039) 0px 1px 2px;">Black Shadow</p>
{{< highlight html >}}
.shadow-black   {text-shadow: 0 1px 3px rgba(0, 0, 0, 0.5); }
{{< /highlight >}}


<p style="color: #fbaa00; text-shadow: rgba(255, 255, 255, 0.498039) 0px 1px 2px; background: #000;padding: 10px;">White Shadow</p>
{{< highlight html >}}
.shadow-white   {text-shadow: rgba(255, 255, 255, 0.498039) 0px 1px 2px;}
{{< /highlight >}}



{{< highlight html >}}
.shadow-no    {text-shadow: rgba(0, 0, 0, 0) 0 0 0;}
{{< /highlight >}}

{{< highlight html >}}
.shadow-3 {
   text-shadow: 0 1px 0 #ccc,
               0 2px 0 #c9c9c9,
               0 3px 0 #bbb,
               0 4px 0 #b9b9b9,
               0 5px 0 #aaa,
               0 6px 1px rgba(0,0,0,.1),
               0 0 5px rgba(0,0,0,.1),
               0 1px 3px rgba(0,0,0,.3),
               0 3px 5px rgba(0,0,0,.2),
               0 5px 10px rgba(0,0,0,.25),
               0 10px 10px rgba(0,0,0,.2),
               0 20px 20px rgba(0,0,0,.15);
}
{{< /highlight >}}

<h2>Initiale(n) mit CSS</h2>

Eine Initiale (auch Initial) ist ein schmückender Anfangsbuchstabe, der am Anfang eines Textes hervorgehoben wird. Mit Pseudoelementen in CSS lässt sich das leicht bewerkstelligen. Eine Auswahl verschiedenster CSS-Initialen.

<p data-height="268" data-theme-id="0" data-slug-hash="azLOyy" data-default-tab="result" data-user="phlow" class='codepen'>See the Pen <a href='http://codepen.io/phlow/pen/azLOyy/'>Initiale mit Pseudo-Elementen</a> by Phlow (<a href='http://codepen.io/phlow'>@phlow</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
<script async src="//assets.codepen.io/assets/embed/ei.js"></script>

<p data-height="268" data-theme-id="0" data-slug-hash="GgMpZR" data-default-tab="result" data-user="phlow" class='codepen'>See the Pen <a href='http://codepen.io/phlow/pen/GgMpZR/'>Initiale mit Pseudo-Elementen und Textschatten</a> by Phlow (<a href='http://codepen.io/phlow'>@phlow</a>) on <a href='http://codepen.io'>CodePen</a>.</p>

## &lt;hr&gt; – Horizontale Linien und Trenner

{{< highlight html >}}
border: 0;
height: 1px;
background: -webkit-linear-gradient(left, transparent, rgba(0, 0, 0, 0.5), transparent);
background: linear-gradient(left, transparent, rgba(0, 0, 0, 0.5), transparent);
margin: 35px 0 33px 0;
{{< /highlight >}}