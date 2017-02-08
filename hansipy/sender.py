# sending log into database

import MySQLdb

def sendtodb(send):
	conn = MySQLdb.connect(host= "localhost",user="root",passwd="220894",db="hansipy")
	x = conn.cursor()

	try:
	   x.execute("""INSERT INTO hansipytable VALUES (%s,%s,%s,%s,%s)""",(send))
	   conn.commit()
	except:
	   conn.rollback()

	conn.close()
if __name__ == '__main__':
	send=('rule_07', '07/Oct/2007:07:07:07 -0400', '192.168.1.07', 'GET', '/test/test/test.txt')
	sendtodb(send)
