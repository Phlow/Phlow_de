---
title: Fixe Scrollbar in Firefox mit einer Zeile CSS
layout: post
url: /fixe-scrollbar-in-firefox-mit-einer-zeile-css/
category: webdesign
---
**CSS Trick ** &middot; Bei der Gestaltung von Websites habe ich mich schon immer geärgert, das Firefox die Scrollbar ausblendet, wenn die Höhe der Webseite kleiner ist als das Browser-Fenster. Wechselt man dann zwischen Webseiten, die mal länger, mal kürzer sind, blitzt die Scrollbar auf und ab und die Webseite verrutscht dann immer mal nach links und mal nach rechts. Über das Stylesheet des [außergewöhnlichen Mimbo Theme][1], bin ich jetzt auf eine Lösung per CSS gestoßen. Die lautet simpel:

<pre>body,html {
    min-height:101%; /*Firefox scrollbar fix*/
    }</pre>

Man lernt einfach nicht aus&#8230;

 [1]: http://phlow.net/magazin/netzkultur/design/603-wordpress-magazine-themes#mimbo