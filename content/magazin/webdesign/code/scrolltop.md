---
subtitle            : Geschmeidig nach oben scrollen
title               : 'Button einblenden mit scrollTop'
meta_description    : "Klein aber fein: scrollTop überwacht die vertikale Position der Scrollleiste und blendet ab einem bestimmten Punkt einen Scroll-Nach-Oben-Button ein."
categories          : code
tags:
    - javascript
---
Klein aber fein: `scrollTop` überwacht die vertikale Position der Scrollleiste und wenn diese größer als *X* ist (im Beispiel 700 Pixel), blendet das Script den *.scrollup*-Button ein.
<!--more-->

## HTML-Code

{{< highlight html >}}
<a href="#" class="scrollup" title="Nach oben springen!">&#59227;</a>
{{< /highlight >}}

## Javascript-Code

{{< highlight javascript >}}
// To The Top
// Tutorial: http://gazpo.com/2012/02/scrolltop/
// The scrollTop gets the current vertical position of the scroll bar.
// If it is greater than 100px, it fades in the .scrollup button,
// otherwise fades out. So, when we scroll down the page more than 300px,
// the button should fade in, and if scroll up to the height of less than 300px
// it should fade out.

$(window).scroll(function(){
        if ($(this).scrollTop() > 700) {
            $('.scrollup').fadeIn();
        } else {
            $('.scrollup').fadeOut();
        }
    });
$('.scrollup').click(function(){
    $("html, body").animate({ scrollTop: 0 }, 700);
    return false;
    });
{{< /highlight >}}

 [1]: http://gazpo.com/2012/02/scrolltop/
