#!/usr/bin/python

from ipaddr import *

for ip in IPNetwork('10.10.0.0/26'):
	print 'ip addr add %s/26 dev eth0' %ip
