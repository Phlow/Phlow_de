---
title: "ffmpeg – Audio & Video decodieren, encodieren und konvertieren"
chapter         : 7
categories : "Dateien konvertieren"
description : Anleitung mit zahlreichen Ffmpeg-Formeln für die Konvertierung von Video und Audio-Daten.
slug            : ffmpeg
---
[Ffmpeg](http://www.ffmpeg.org/) ist ein sehr schneller Video- und
Audio-Konverter, der auch Informationen aus Live-Audio und
Live-Video-Quellen abgreifen kann. Ffmpeg ist ein sehr flexibles
Werkzeug und konvertiert mit den richtigen Optionen schnell und flüssig
Deine Dateien von z.B. *m4a* zu *wav* oder *mp4* zu *mpg*.
<!--more-->

{{< toc >}}

Bekannte Programme, die FFmpeg verwenden, sind unter anderem VLC, xine oder HandBrake. Im Folgenden findest Du ein paar ffmpeg-Formeln für die Decodierung, Encodierung und Konvertierung von Audio- und Videodateien.

* [Download: ffmpeg](http://www.ffmpeg.org/download.html)
* [Dokumentation: ffmpeg](http://www.ffmpeg.org/ffmpeg.html)

## ffmpeg installieren

ffmpeg installierst Du unkompliziert mit HomeBrew, dem Paketmanager. Es
gibt viele Optionen bei der Installation von FFmpeg, denn ffmpeg nutzt
zahlreiche verschiedene Bibliotheken, um die verschiedenen Codecs
umzurechnen. Der kürzeste Befehl für die Installation von ffmpeg lautet:

> **Tip**
> 
> Mehr zu HomeBrew im dazugehörigen Kapitel.

    $ brew install ffmpeg

Dann installierst Du womöglich aber nicht alle notwendigen Bibliotheken.
Um herauszufinden, welche Optionen es alle gibt, tippst Du `brew options
ffmpeg`. Das Ergebnis ist ziemlich lang und sieht bei mir so aus. Weiter
unten steht dann der vollständige Befehl, um ffmpeg mit allen Optionen
zu installieren.

    $ brew options ffmpeg
    --with-chromaprint
        Enable the Chromaprint audio fingerprinting library
    --with-fdk-aac
        Enable the Fraunhofer FDK AAC library
    --with-fontconfig
        Build with fontconfig support
    --with-freetype
        Build with freetype support
    --with-frei0r
        Build with frei0r support
    --with-game-music-emu
        Build with game-music-emu support
    --with-libass
        Enable ASS/SSA subtitle format
    --with-libbluray
        Build with libbluray support
    --with-libbs2b
        Build with libbs2b support
    --with-libcaca
        Build with libcaca support
    --with-libebur128
        Enable using libebur128 for EBU R128 loudness measurement
    --with-libgsm
        Build with libgsm support
    --with-libmodplug
        Build with libmodplug support
    --with-libsoxr
        Enable the soxr resample library
    --with-libssh
        Enable SFTP protocol via libssh
    --with-libvidstab
        Enable vid.stab support for video stabilization
    --with-libvorbis
        Build with libvorbis support
    --with-libvpx
        Build with libvpx support
    --with-opencore-amr
        Enable Opencore AMR NR/WB audio format
    --with-openh264
        Enable OpenH264 library
    --with-openjpeg
        Enable JPEG 2000 image format
    --with-openssl
        Enable SSL support
    --with-opus
        Build with opus support
    --with-rtmpdump
        Enable RTMP protocol
    --with-rubberband
        Enable rubberband library
    --with-schroedinger
        Enable Dirac video format
    --with-sdl2
        Enable FFplay media player
    --with-snappy
        Enable Snappy library
    --with-speex
        Build with speex support
    --with-tesseract
        Enable the tesseract OCR engine
    --with-theora
        Build with theora support
    --with-tools
        Enable additional FFmpeg tools
    --with-two-lame
        Build with two-lame support
    --with-wavpack
        Build with wavpack support
    --with-webp
        Enable using libwebp to encode WEBP images
    --with-x265
        Enable x265 encoder
    --with-xz
        Enable decoding of LZMA-compressed TIFF files
    --with-zeromq
        Enable using libzeromq to receive commands sent through a libzeromq client
    --with-zimg
        Enable z.lib zimg library
    --without-lame
        Disable MP3 encoder
    --without-qtkit
        Disable deprecated QuickTime framework
    --without-securetransport
        Disable use of SecureTransport
    --without-x264
        Disable H.264 encoder
    --without-xvid
        Disable Xvid MPEG-4 video encoder
    --HEAD
        Install HEAD version

Um ffmpeg mit allen wichtigen Optionen zu installieren, kopierst Du am
Besten den folgenden Befehl in Dein Terminal und lässt HomeBrew den Rest
erledigen.

    $ brew install ffmpeg --with-fdk-aac --with-ffplay --with-freetype --with-frei0r --with-libass --with-libvo-aacenc --with-libvorbis --with-libvpx --with-opencore-amr --with-openjpeg --with-opus --with-rtmpdump --with-schroedinger --with-speex --with-theora --with-tools

Solltest Du ffmpeg bereits installiert haben, kannst Du mit dem
folgenden Befehl ffmpeg auf den aktuellen Stand bringen.

    $ brew update && brew upgrade ffmpeg

## Videos konvertieren mit ffmpeg

### ffmpeg: Video Informationen anzeigen

    $ ffmpeg -i video.avi

### ffmpeg: Video in anderes Format umwandeln/konvertieren

*ffmpeg* erkennt anhand des Dateiendes das Format, in welches es das
Video konvertieren soll. Der folgende Befehl konvertiert eine
avi-Videodatei in eine mpg-Videodatei.

    $ ffmpeg -i original.avi neues-format.mpg

Und der folgende Befehl wandelt eine mpg- in eine mp4-Datei.

    $ ffmpeg -i original.mpg neues-format.mp4

* `-i` Parameter, der das Inputfile `original.avi` festlegt.

* `neues-format.mpg` legt Format durch Dateiendung fest

### ffmpeg: Video in Teile schneiden ohne erneute Encodierung

    $ ffmpeg -i original.mp4 -ss 00:06:15 -c copy ausschnitt.mp4

* `-i` Parameter, der das Inputfile `original.avi` festlegt.

* `-ss 00:06:15` steht für die Startzeit, ab welcher der Ausschnitt
    beginnen soll.

* `-c copy` Legt den Codec mit `c` fest. Da kein Codec benannt wird,
    bleibt es bei dem Eingangscodec. `copy` erstellt dann die Kopie.

## Audio konvertieren mit ffmpeg

### WAV in MP3 umwandeln mit FFMPEG

Um WAV-Dateien in MP3-Dateien umzuwandeln, solltest Du unbedingt die
Option `-ab` plus einen entsprechenden Wert nutzen. Konvertierst Du mit
ffmpeg Audiodateien ohne eine Qualitätsangabe komprimiert ffmpeg MP3s
mit der schlechtesten Qualität. Also, besser so:

    ffmpeg -i song.wav -ab 320k song.mp3

* TIPP  
    Um einen ganzen Ordner WAV-Dateien in MP3s zu verwandeln, genügt
    diese kleine for-Schleife: `for i in .wav; do ffmpeg -i "$i"
    -ab 320k "${i%.}.mp3"; done`.

### Eine WAV-Datei gleichzeitig in mehrere Audioformate umwandeln

Du kannst eine Eingangsdatei verwenden, um mehrere verschiedene
Ausgabedateien zu erhalten. Dazu genügen einfach die Präfixe des
gewünschten Ausgabeformates. Das folgende Beispiel verwandelt die
WAV-Datei `song.wav` nacheinander als OGG-, MP4- und MP3-Datei.

    ffmpeg -i song.wav song.ogg song.mp4 song.mp3

Um die Qualität zu steuern, musst Du wiederum die Parameter mit angeben.
Perfekte Soundqualität erhälst Du dann so:

    ffmpeg -i song.wav -aq 10 song.ogg song.mp4 -ab 320k song.mp3

### WAV-Dateien in OGG-Datei umwandeln mit FFMPEG

Ogg ist ein Container-Format. Es nutzt in der Regel den Vorbis audio
codec. Diesen kann man mit ffmpeg installieren und ist mit dem libvorbis
encoder gebündelt. Um eine WAV-Datei in eine OGG-Datei umzuwandeln nutzt
man den folgenden Befehl

    $ ffmpeg -i input.wav -c:a libvorbis -qscale:a 5 output.ogg

Das Qualitätsniveau geht von 0 bis 10. Wobei 10 die höchste
Qualitätsstufe bildet. Im obigen Beispiel ist die Qualität `5`, also
Mittelmaß.

### m4a nach mp3

    $ for f in *.m4a; do ffmpeg -i "$f" -codec:v copy -codec:a libmp3lame -q:a 2 newfiles/"${f%.m4a}.mp3"; done

## GIF-Bilder mit ffmpeg erstellen

{{< amp/img src="/images/terminal/bigbuckbunny.gif" width="480" height="270" alt="Big Buck Bunny – GIF-Bilder mit ffmpeg erstellen" >}}

Der folgende Befehl erstellt eine GIF-Datei mit den gleichen Abmessungen
wie die Eingabedatei. In der Regel ist das eine schlechte Idee, da GIFs
im Vergleich zu anderen Videoformaten nicht gut komprimiert werden und
aus einer mehrminütigen Datei ein kolossales GIF erstellen.

    ffmpeg -i original.mp4 ergebnis.gif

### Video für GIF optimieren: Kürzen und Skalieren

Zuerst schneidest Du also nur einen Ausschnitt aus der Video-Datei mit
`-ss` und `-t`, um einen Anfang zu definieren und die Dauer des
Ausschnitts zu bestimmen. Gleichzeitig skalierst Du die Videodatei
([Skalieren mit ffmpeg](https://trac.ffmpeg.org/wiki/Scaling)), z.B. auf
eine Breite von 480 Pixeln mit `scale=480:-1`. Die `-1` befiehlt ffmpeg
das Seitenverhältnis beizubehalten. Du kannst aber auch einen Wert wie
z.B. `scale=480:240` eingeben. Das Ergebnis könnte dann aber verzerrt
aussehen.

    ffmpeg -ss 0.0 -t 2.5 -i original.mp4 -vf scale=480:-1 video320.mp4

### Farbpalette erzeugen für bessere GIF-Bilder

Damit das GIF richtig gut aussieht, extrahierst Du als nächstes per
Video-Filter eine Palette des Videos, die als *palette.png*
abgespeichert
    wird.

    ffmpeg -i video320.mp4 -filter_complex "[0:v] palettegen" palette.png

Und im letzten Schritt erstellst Du jetzt das 480 Pixel breite GIF mit
optimierter
    Farbpalette.

    ffmpeg -i video480.mp4 -i palette.png -filter_complex "[0:v][1:v] paletteuse" ergebnis.gif

## Noch mehr ffmpeg Anleitungen

* Deutsche Anleitungen  
    [Videohokuspokus mit
    ffmpeg](http://spielwiese.la-evento.com/hokuspokus/)

* Englische Anleitungen  
    [How to install FFmpeg on Mac OS
    X](http://www.renevolution.com/how-to-install-ffmpeg-on-mac-os-x/)  
    [A FFmpeg Tutorial For
    Beginners](http://linuxers.org/tutorial/ffmpeg-tutorial-beginners)  
    [19 ffmpeg commands for all
    needs](http://www.catswhocode.com/blog/19-ffmpeg-commands-for-all-needs)  
    [How to watermark a video using
    FFmpeg](http://www.idude.net/index.php/how-to-watermark-a-video-using-ffmpeg/)
