#!/usr/bin/ruby

require 'cgi'

cgi = CGI.new("html5")

cgi.out("text/html") do
	cgi.html do
		cgi.head do
			cgi.title do "Form" end
		end + 
		cgi.body do
			cgi.h1 do "Form" end +
			cgi.br +
			cgi.form do
				cgi.input("form") + 
				cgi.br +
				cgi.submit
			end 
		end 
	end
end
