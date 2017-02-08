# realtime.py for realtime mode running hansipy

from hansipy import *
from tail import *
from sender import *

# Print all match string in realtime mode
logfile  = open("./run/access.log") # "./run/access.log + ../log/apache2/access.log"
loglines = tail(logfile)
parselog = parsing(loglines)
result=analyz(parselog)
for i in result:
	j='|'.join(map(str,i))
	print j
	sendtodb(i)