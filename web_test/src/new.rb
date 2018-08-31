#!/usr/bin/ruby

print "Content-type: text/html \r\n\r\n"

require 'cgi'

cgi = CGI.new

puts cgi['search']
puts

hash = cgi.params

puts hash
puts

puts hash['search']
puts
