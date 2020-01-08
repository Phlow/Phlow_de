---
weight          : 050
subtitle        : Webdesign Grundlagen
title           : 'HTML & CSS Style Guide für übersichtlichen Code'
categories      : html-grundlagen
youtube         : 
slug            : html-coding-style-guide
---
Strukturiere Deinen HTML/CSS-Code und Du kannst ihn besser lesen und sparst Zeit. Dieser Artikel stellt Dir HTML/CSS-Guidlines und die wichtigsten Regeln vor.
<!--more-->

> Code, der sauber aussieht, fühlt sich gut an.

## Die 7 wichtigsten Style Guide-Regeln

* Strukturiere Deinen Code einheitlich mit zwei einrückenden Leerzeichen.
* Schreib alles in Kleinbuchstaben: HTML, Attribute, CSS Selektoren, Werte.
* Kommentiere Deinen Code, damit Du und andere diesen auch später noch verstehen.
* Gib jedem HTML/CSS-Element eine eigene Zeile.
* Benutze einfache doppelte Anführungszeichen um "werte" anzugeben.
* Benenne CSS-Klassen verständlich und vermeide Abkürzungen.
* Nutze nur das Minus, um CSS-ID und -Klassen zu strukturieren.

## HTML/CSS Style Guide

Große Unternehmen wie WordPress, GitHub oder Google veröffentlichen Ihre eigenen HTML/CSS Style Guides. Diese findest Du über die folgenden Links:

* [Google HTML/CSS Style Guide](https://google.github.io/styleguide/htmlcssguide.xml)
* [CSS toolkit und Guidelines von GitHub](http://primercss.io/)
* WordPress
    * [WordPress – CSS Coding Standards](https://make.wordpress.org/core/handbook/best-practices/coding-standards/css/)
    * [WordPress – HTML Coding Standards](https://make.wordpress.org/core/handbook/best-practices/coding-standards/html/)
* [cssguidelin.es](http://cssguidelin.es/)

## CSS Kommentare

### Inhaltsverzeichnis

{{< highlight css >}}
/**
 * CONTENTS
 *
 * SETTINGS
 * Global...............Globally-available variables and config.
 *
 * TOOLS
 * Mixins...............Useful mixins.
 *
 * GENERIC
 * Normalize.css........A level playing field.
 * Box-sizing...........Better default `box-sizing`.
 *
 * BASE
 * Headings.............H1–H6 styles.
 *
 * OBJECTS
 * Wrappers.............Wrapping and constraining elements.
 *
 * COMPONENTS
 * Page-head............The main page header.
 * Page-foot............The main page footer.
 * Buttons..............Button elements.
 *
 * TRUMPS
 * Text.................Text helpers.
 */
{{< / highlight >}}

### Lange CSS Kommentare

{{< highlight css >}}
/**
 * Ich bin ein langer Kommentar. Ich beschreibe im Detail den folgenden CSS-
 * Code. Ich packe nicht mehr als 80 Zeichen pro Zeile damit ich lesbar bleibe.
 */
{{< / highlight >}}


### CSS – Arbeiten mit Überschriften

{{< highlight css >}}
/*------------------------------------*\
    # Überschrift
\*------------------------------------*/
{{< / highlight >}}

