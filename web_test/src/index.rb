#!/usr/bin/ruby

print "Content-type: text/html \r\n\r\n"

require 'cgi'

print "<!DOCTYPE html>"
print "<html>"
print "<head></head>"
print "<body>"

print "<div style='margin: 3%; font-size: xx-large; text-align: center;'>"
print "<form action='http://192.168.0.63/cgi-bin/new.rb' method='POST'>"
print "<label for='search'>Search: </label>"
print "<input type='text' id='search' name='search'>"
print "<input type='submit' id='submit' name='submit'>"
print "</form>"
print "</div>"

print "</body>"
print "</html>"
