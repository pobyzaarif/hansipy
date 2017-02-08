# tail.py a file like tail -f namefile.

import time

def tail(thefile):
    thefile.seek(0,2)
    while True:
        line = thefile.readline()
        if not line:
            time.sleep(0.1)
            continue
        yield line

if __name__ == '__main__':
    logfile = open("./run/access.log","r") # "../log/apache2/access.log"
    loglines = tail(logfile)
    for line in loglines:
        print line,

    
