#!/usr/bin/python

from ipaddr import *

i=0
for ip in IPNetwork('10.10.0.0/26'):
	print 'auto eth0:%s' %i
	print 'iface eth0:%s inet static' %i
 	print '  address %s' %ip
	print '  netmask 16'
	i=i+1
