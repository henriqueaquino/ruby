#!/usr/bin/ruby

tester = 'Bola'

if tester =~ /Perl|Python/
	puts 'Matched'
elsif tester =~ /Bo(lo|la)/
	puts 'Matched: Bolo or Bola'
else
	puts 'No Pattern'
end

def action_one
	yield 
	yield
	yield
end

action_one { puts 'INICIO' }

action_one do puts 'DOING' end

def action_two
	yield('a', 'b', 'c')
end

action_two { | p1, p2, p3 | puts "#{p1} #{p2} #{p3}" }

array_each = %w{ one two three }

array_each.each do | word | puts word end
array_each.each { | word | puts word }

['ONE', 'TWO', 'THREE'].each {|p| puts p}

