---
subtitle    : "Static Website Generator"
title       : "Hugo Shortcodes"
---
Damit Markdown in Shortcodes nach HTML konvertiert wird, muss der Shortcode `%` nutzen.


    {{ % mein_shortcode %}}
    **Fett** oder _kursiv_, so wie Du es magst.
    {{ % /mein_shortcode %}}






~~~
{{ < param testparam >}}
{{ < param "my.nested.param" >}}
{{ < instagram BWNjjyYFxVx >}}
{{ < highlight html >}}
   <h1 id="title">{{ .Title }}</h1>
    {{ range .Pages }}
        {{ .Render "summary"}}
    {{ end }}
{{ < /highlight >}}
{{ < youtube w7Ft2ymGmfc >}}
~~~

