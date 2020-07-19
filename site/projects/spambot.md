---
permalink: /projects/spambot/
title: SpamBot
---
# SpamBot
## Brief description
VBS script to simulate keystrokes at high speed.
## Source code
Download it [here](https://raw.githubusercontent.com/petar-vitorac/petar-vitorac.github.io/master/download/SpamBot.vbs).
```vbs
Set wshshell = wscript.createobject("wscript.shell")

Dim x
x=0

Dim times
times=10

Dim waiting
waiting=50

Dim text
text="This text will be typed."

wscript.sleep 3000

Do While x<times
wscript.sleep waiting
wshshell.sendkeys text
wshshell.sendkeys "{ENTER}"
x=x+1
Loop
```
## Customisation
Modify the following lines:
```vbs
times={INSERT NUMBER OF REPETITIONS}
```

```vbs
waiting={INSERT DELAY BETWEEN REPETITIONS (in ms)}
```

```vbs
text="{INSERT TEXT TO BE TYPED}"
```
## Use
Run the file. After 3 seconds, the keystrokes will begin.
**CAREFUL! Once the script is started, there is no way to stop it other than killing it in the task manger (which can sometimes be difficult to do while keys are spammed).**
