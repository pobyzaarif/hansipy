![N|Solid](https://www.python.org/static/img/python-logo.png)
# About Hansipy
Hansipy, apache log access analyzer for detection and prevention of web attack. Intrusion prevention systems utilize signature based detection method. Generator tricks for systems programmers with sample access.log already Presented at PyCon'08, Chicago, by David M. Beazley. My aim is to rewrite the code into this project about detection web attack like sqli, backdoor/shell, page login access and more. Add some generator/function for detection, send to database and display in php report.

## How it works
Hansipy is basically using string signature and matches each lines from the apache log access. these pattern has been chosen manually from whitepaper SANS Institute titled "How to identify malicious HTTP Requests". you can found this paper here https://www.sans.org/reading-room/whitepapers/detection/identify-malicious-http-requests-34067
I also put shell/backdoor scanner using name of shell/backdoor database from emposha project called "PHP-Shell-Detector". visit emphosa project about Web Shell Detector https://github.com/emposha/PHP-Shell-Detector
Hansipy write in simple python script using method generator, simple function like if-else, for, and more. Output will be shown on your terminal also reported to your database and display onto web browser by php script. add sorting menu features for easy analysis.

## Instalation
- download this project from https://github.com/pobyzaarif
- move hansipy folder to /var (linux!)
- move hansipy_report folder to /var/www/html (public_html)
- import sql file to database hansipy (must create database hansipy before)
- setting config file and root folder
- execute hansipy.py
- this script can running in realtime mode by execute realtime.py

## video tutorial
bit.ly/7noob

## Features

## Demo
http://www.website.com/hansipy/

## Rule
- rule_01 : Cross-Site Scripting
- rule_02 : SQL Injection
- rule_03 : Insecure Direct Object Reference
- rule_04 : Page with status code between >= 400
- rule_05 : Page with transfers over 1MB
- rule_06 : Page login access
- rule_07 : Backdoor/Shell

## Changelog
- 1.5 added sender data to db, display report html/php.
- 1.4 script structure changed. generator function used. realtime mode added.
- 1.3 script structure changed. rule, host, datetime, method, added to report point.
- 1.2 rule, script structure changed.
- 1.1 report to csv_file, some pattern added.
- 1.0 first version.
