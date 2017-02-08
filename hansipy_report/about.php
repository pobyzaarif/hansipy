<?php include('header.php'); ?>
<body>
    <div class="row-fluid">
        <div class="span12">
            <div class="container">
<br><br>
<div class="pull-left">
				<h3>About Hansipy</h3>
				<p>Hansipy, apache log access analyzer for detection and prevention of web attack. Intrusion prevention systems utilize signature based detection method. Generator tricks for systems programmers with sample access.log already Presented at PyCon'08, Chicago, by <b>David M. Beazley</b>. My aim is to rewrite the code into this project about detection web attack like sqli, backdoor/shell, page login access and more. Add some generator/function for detection, send to database and display in php report. </p>
				<h3>How it works</h3>
				<p>Hansipy is basically using string signature and matches each lines from the apache log access. these pattern has been chosen manually from whitepaper SANS Institute titled "How to identify malicious HTTP Requests". you can found this paper <a href="https://www.sans.org/reading-room/whitepapers/detection/identify-malicious-http-requests-34067">here</a></p>
				<p>I also put shell/backdoor scanner using name of shell/backdoor database from emposha project called "PHP-Shell-Detector". visit emphosa project about Web Shell Detector <a href="https://github.com/emposha/PHP-Shell-Detector">here</a></p>
				<p>Hansipy write in simple python script using method generator, simple function like if-else, for, and more. Output will be shown on your terminal also reported to your database and display onto web browser by php script. add sorting menu features for easy analysis. </p>
				<h4>Instalation</h4>
				<li> download this project from <a href="https://github.com/pobyzaarif">here</a></li>
				<li> move hansipy folder to /var (linux!)</li>
				<li> move hansipy_report folder to /var/www/html (public_html)</li>
				<li> import sql file to database hansipy(must create database hansipy before)</li>
				<li> setting config file and root folder</li>
				<li> execute hansipy.py</li>
				<li> this script can running in realtime mode by execute realtime.py</li>
				<br>
				<p>video tutorial <a href="bit.ly/7noob">here</a></p>
				<h3>Features</h3>
				<h4>Demo</h4>
				<p>http://www.website.com/hansipy/</p>
				<h4>Rule</h4>
				<p>rule_01 : Cross-Site Scripting</p>
				<p>rule_02 : SQL Injection</p>
				<p>rule_03 : Insecure Direct Object Reference</p>
				<p>rule_04 : Page with status code >= 400</p>
				<p>rule_05 : Page with transfers over 1MB</p>
				<p>rule_06 : Page login access</p>
				<p>rule_07 : Backdoor/Shell</p>
				<h3>Changelog</h3>
				<li>1.5 added sender data to db, display report html/php</li>
				<li>1.4 script structure changed. generator function used. realtime mode added.</li>
				<li>1.3 script structure changed. rule, host, datetime, method, added to report point</li>
				<li>1.2 rule, script structure changed</li>
				<li>1.1 report to csv_file, some pattern added</li>
				<li>1.0 first version</li>
				</div>
        </div>
        </div>
        </div>
    </div>
</body>
<?php include('footer.php'); ?>
</html>


