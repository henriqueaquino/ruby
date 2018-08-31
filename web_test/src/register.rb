#!/usr/bin/ruby

print "Content-type: text/html \r\n\r\n"

require 'cgi'

<%text = "Hello World!"%>

print "<html><head></head><body>"
<%puts text%>
print "</body></html>"
