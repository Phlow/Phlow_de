---
subtitle     : "Static Website Generator"
title        : "Hugo If – Beispiele"
categories   : hugo
---
To tell if some value doesn’t exist. (There is probably a less convoluted way to handle this.)

    {{ if (not (isset .Params "some_variable")) }}
    {{ end }}

    {{ if eq .Page.Params.Categories "seminare" }}
    {{ end }}

