import time
from hansipy import *
loglines = operatordata("access.log*","./apache2")
no=0
f_log=open('./run/access.log','w')
for i in loglines:
	no+=1
	f_log.write(i)
	print 'write line', no
	time.sleep(0.1)
	f_log.flush()
