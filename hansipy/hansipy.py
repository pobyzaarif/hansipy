# hansipy.py analyzer apache log

import os
import fnmatch
import gzip
import re

# lookin for file with pattern(in this case "access.log*"), directory/subdir(in this case "apache2")
def genfind(filepat,top):
    for path, idorist, filelist in os.walk(top):
        for name in fnmatch.filter(filelist,filepat):
            yield os.path.join(path,name)

# open file from result 1st func
def genopen(filenames):
    for name in filenames:
        if name.endswith(".gz"):
            yield gzip.open(name)
        else:
            yield open(name)

# cat/read file each line
def gencat(sources):
    for s in sources:
        for item in s:
            yield item

# operator call another func for data collector(3 func on top) and return value to operatordata
def operatordata(filepat, top):
    names = genfind(filepat,top)
    files = genopen(names)
    lines = gencat(files)
    return lines

# remap log from dict,
def mapp(dictseq, name, func):
    for d in dictseq:
        d[name] = func(d[name])
        yield d

# extraction, take part of lines then compile into dict model. 
def parsing(loglines):
	logpats = r'(\S+) (\S+) (\S+) \[(.*?)\] ' \
	           r'"(\S+) (\S+) (\S+)" (\S+) (\S+) (\S+) (\S+) (\S+)' #already try with this regex \"([^ ]+.+)\" for filter user_agent
	logpat = re.compile(logpats)
	groups = (logpat.match(line) for line in loglines)
	tuples = (g.groups() for g in groups if g)
	
	colnames = ('host','location','user','datetime',
                'method', 'request','protocol','status','bytes','referer','uagent')
	log      = (dict(zip(colnames,t)) for t in tuples)
	log      = mapp(log,"status",int)
	log      = mapp(log,"bytes", lambda s: int(s) if s != '-' else 0)
	return log

# analysing log with string matching
def analyz(parsinglog):
	# pattern Cross Site Scripting (XSS) 4.3.1
	xss = ['%3C','<img','<a href','<body','<script','<b','<h','<marquee'] 
	# pattern Injection Flaws 4.3.2
	sqli = ['%27','--','%3B','exec','union+','union*','system\(','eval(','group_concat','column_name','order by','insert into','load_file', '@version']
	# Insecure Direct Object Reference 4.3.4
	idor = ['../','%2e%2f','%2e%2e/','.%2f','..%c1%9','..%c0%af','/usr/','/passwd','/grub','boot.ini','/conf/','/etc/','/proc/','/opt/','/sbin/','/dev/','/tmp/','/kern/','/root/','/sys/','/system/','/windows/','/winnt/','/inetpub/','/localstart/','/boot/']
	# login_finder/bruteforce
	login=['/wp-login','/adminpanel',]#'admin','login','manager','superuser','cpanel','member/','member.','members/','members.','user/','user.','cp/','uvpanel/','manage/','manage.','management/','management.','signin/','signin.','log-in/','log-in.','log_in/','log_in.','sign_in/','sign_in.','sign-in/','sign-in.','users/','users.','accounts/','accounts.'
	# evil
	bdsl = ['wso.php','phpshell.php','shell_uploader.php','mysql.php','r57.php','filesman.php','spam.php','b374k.php','c99.php','phpemailer.php','cmd.php','cmd.asp','noname.php','hiddenshell.php','cmd.pl','s72shell.php','cocacola_shell.php','cih.php','lamashell.php','cshell.php','troyan.php','cyberspy5.asp','cmd.jsp','spam_trustapp.php','arab_black_hat.pl','indishell.php','savefile.php','gnyshell.php','hackerps.php','phpfilemanager.php','joomla_spam.php','elmaliseker.asp','irc_bot.pl','teamsql.php','pbot.php','insomnia.aspx','antisecshell.php','aspydrv.vb','951078biJ.php','nstview.php','unitxshell.pl','phpspy.php','getlinks.php','imhapftp.php','stressbypass.php','darkshell.php','isko.php','worse.php','zaco.php','server_config.php','crystal.php','ahlisyurga_shell.php','batavi4.php','blindshell.c','r3laps3.php','w3dshell.php','albanianshell.php','hostdevil.pl','420532shell.php','php_mailer.php','udpflooder.php','egyspider.php','629788tryag.php','efso2.asp','phantasma.php','jspreverse.jsp','ajan.asp','ipays777.php','safemode.php','mahkeme.php','rootshell.php','clearshell.php','lizozim.php','ironshell.php','al-marhum.php','lolipop.php','phpbackdoor.php','devilzshell.php','ajax_command_shell.php','nshell.php','connectback2.pl','king511.pl','cristercorp_infocollector.php','smtpd.py','dc3shell.php','pzadv.php','O0O.php','aZRaiL.php','stunshell.php','perlbot.pl','harauku.php','metasploit.php','c100.php','backdoor.php','simshell.php','gfs.php','myshell.php','ntdaddy.asp','tdshell.php','dxshell.php','spyshell.php','hacker.php','c2007.php','indexer.asp','webroot.php','FaTaLisTiCz.php','fx0.php','pas.php','gscshell.php','kadotshell.php','htaccess_shell.htaccess','kaushell.php','madspot.php','elmaliseker.vbs','telnet.pl','foreverpp.php','antichat_shell.php','smartshell.asp','webadmin.php','bogel_shell.php','erne.php','moroccan_spam.php','cmos_clr.php','s72shell.php','rhtool.asp','brute_force_tool.php','sec4ever.php','webshell.php','mrtiger.php','empo.php','v0ld3m0r.php','jspwebshell.java','us3rspl.pl','m1n1shell.php','cpanel.php','symlink.php','constance.php','nixshell.php','teamps.php','remoteview.php','simple_shell.php','sempak.php','powerdreamshell.asp','networkfilemanager.php','cgitelnet.pl','snipershell.php','gammashell.pl','variables.asp','nccshell.php','sincap.php','cgi-python.py','cmd.aspx','wordpress_exploit.php','qReyFuRt.aspx','simattacker.php','tryag.php','fatalshell.php','g00nshell.php','wacking.php','mildnet.php','cybershell.php','cbot.php','devil.php','sroshell.php','shell_commander.php','buckethead.php','fuckphpshell.php','cfexec.cfm','ayyildiz_tim.php','includeshell.php','dtool.php','andr3a.php','backup.php','nogrodpBot.php','mulcishell.php','orbshell.php','onboomshell.php','ctt_shell.php','javashell.py','scanner_jatimcrew.pl','rader.asp','nexpl0rer.php','goon.php','fenix.php','itsecteam_shell.php','phytonshell.py','locusshell.php','gohack_powerserver.php','shellbot.pl','shell_exploit.php','akatsuki.php','coderz.php','priv8_scr.pl','hostdevil.php','accept_language.php','shellatildi.php','1n73ction.php','cgi-shell.pl','remoteshell.php','gaulircbot.php','img.php','pwnshell.jsp','diveshell.php','reverse_shell.php','mohajer22.pl','mm.php','phpmyadmin_exploit.php','empixcrew.pl','winx.php','entrika.php','b64shell.php','backdoorconnect.pl','n3fa5t1ca.php','iframe.php','120667kk.php','xinfo.php','blood3rpriv8.php','stakershell.php','klasvayv.asp','phvayv.php','zorro.pl','i47.php','lostdc.php','removexplorer.vb','ekin0x.php','zehir4.asp','obet.php','h4ntu.php','lurm.cgi','asmodeus.pl','shellarchive.php','mysql_adminer.php','loadshell.php','perlwebshell.pl','extplorer.php','zehir4.php','casus15.php','tbdsecurity.php','postman.php','telnetd.pl','devilz0de.php','v0ld3m0rt.php','kral.php','hshell.php','aspx-shell.aspx','update.php','explore.asp','configspy.php','jackal.php',]

	for r in parsinglog:
		for s in xss:
			if s in r['request']:
				v='rule_01', r['datetime'],r['host'],r['method'],r['request']
				yield v

		for s in sqli:
			if s in r['request']:
				v='rule_02', r['datetime'],r['host'],r['method'],r['request']
				yield v

		for s in idor:
			if s in r['request']:
				v='rule_03', r['datetime'],r['host'],r['method'],r['request']
				yield v

		for s in login:
			if s in r['request']:
				v='rule_06', r['datetime'],r['host'],r['method'],r['request']
				yield v

		for s in bdsl:
			if s in r['request']:
				v='rule_07', r['datetime'],r['host'],r['method'],r['request']
				yield v

		# Client Error 4xx 
		if 400 <= r['status'] <= 500:
			v='rule_04', r['datetime'],r['host'],r['method'],r['request']
			yield v
		# Server Error 5xx
		elif r['status'] >= 500:
			v='rule_04', r['datetime'],r['host'],r['method'],r['request']
			yield v

		# request over 1Mb
		elif r['bytes'] >= 1000000:
			v='rule_05', r['datetime'],r['host'],r['method'],r['request']
			yield v

		else:
			pass

if __name__ == '__main__':
	loglines = operatordata("access.log*","./apache2") 
	parsinglog = parsing(loglines)
	result = analyz(parsinglog)
	m=0
	for i in result:
		j='|'.join(map(str,i))
		m+=1
		print m,j
		# sendertodb(i) 
