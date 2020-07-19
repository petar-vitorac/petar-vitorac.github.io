Set wshshell = wscript.createobject("wscript.shell")

Dim x
x=0

Dim times
times=10

Dim waiting
waiting=50

Dim text
text="This text will be typed"

wscript.sleep 3000

Do While x<times
wscript.sleep waiting
wshshell.sendkeys text
wshshell.sendkeys "{ENTER}"
x=x+1
Loop
