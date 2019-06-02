# Lotto
# type 6 Numbers in Range of 1 - 49
# tell computer to randomly generate 6 numbers.
# tell computer to stop after x-tries
system "cls"
puts""
puts""
puts"            MM                                                             "
puts"         MMMMMMM           MMM                  MMMM      MMM              "
puts"      MMMMMMMMMMMM    MMMMMMMM                 MMMMM    MMMMM              "
puts"   MMMMMMMMMMMMMMMMM   MMMMMM              MMMMMMMMMMMMMMMMMMMMM           "
puts"    MMMMM    MMMMM    MMMMMM    MMMMMMMMMM  MMMMMMM  MMMMMMM  MMMMMMMMMMM  "
puts"    MMM      MMM      MMMMMM MMMMMM   MMMMM MMMMMM   MMMMMM  MMMMMM  MMMMMM"
puts" MMMMMMMM MMMMMMMM   MMMMMM MMMMMM   MMMMMMMMMMMM M MMMMMM  MMMMMM   MMMMMM"
puts" MMMMMMMMMMMMMMM     MMMMMMMM MMMMMMMMMMM  MMMMMMMM MMMMMMMM  MMMMMMMMMMM  "
puts"   MMMMMMMMMM                                                              "
puts"     MMMMM                                                                 "

puts" AJ Lotto Generator"
require 'stringio'
require 'benchmark'
Ziehung = []
Xiehung = []
count = 1
$a1 = 0
$a2 = 0
$a3 = 0
$a4 = 0
$a5 = 0
$a6 = 0
$b1 = 0
$b2 = 0
$b3 = 0
$b4 = 0
$b5 = 0
$b6 = 0
$Zps = 28173.0
puts""
puts""
puts""

until $a1 > 0 && $a1 <= 49
puts "Erste Zahl tippen..."
$a1 = gets.to_i
Ziehung << $a1
end
until $a2 > 0 && $a2 <= 49 && $a1 != $a2
puts "Zweite Zahl tippen..."
$a2 = gets.to_i
Ziehung << $a2
end
until $a3 > 0 && $a3 <= 49 && $a1 != $a2 && $a1 != $a3 && $a2 != $a3 
puts "Dritte Zahl tippen..."
$a3 = gets.to_i
Ziehung << $a3
end
until $a4 > 0 && $a4 <= 49 && $a1 != $a2 && $a1 != $a3 && $a2 != $a3 && $a1 != $a4 && $a2 != $a4 && $a3 != $a4 
puts "Vierte Zahl tippen..."
$a4 = gets.to_i
Ziehung << $a4
end
until $a5 > 0 && $a5 <= 49 && $a1 != $a2 && $a1 != $a3 && $a2 != $a3 && $a1 != $a4 && $a2 != $a4 && $a3 != $a4 && $a5 != $a1 && $a5 != $a2 &&  $a5 != $a3 && $a5 != $a4 
puts "Fuenfte Zahl tippen..."
$a5 = gets.to_i
Ziehung << $a5
end
until $a6 > 0 && $a6 <= 49 && $a1 != $a2 && $a1 != $a3 && $a2 != $a3 && $a1 != $a4 && $a2 != $a4 && $a3 != $a4 && $a5 != $a1 && $a5 != $a2 &&  $a5 != $a3 && $a5 != $a4 && $a5 != $a6 && $a6 != $a1 && $a6 != $a2 && $a6 != $a3 && $a6 != $a4
puts "Sechste Zahl tippen..."
$a6 = gets.to_i
Ziehung << $a6
end
system "cls"
# until $a5 > 0 && $a5 <= 49 # && $a1 != $a2 != $a3 != $a4 != $5
# puts "Fuenfte Zahl tippen..."
# $a5 = gets.to_i
# Ziehung << $a5
# end
# until $a6 > 0 && $a6 <= 49 # && $a1 != $a2 != $a3 != $a4 != $5 != $a6
# puts "Sechste Zahl tippen..."
# $a6 = gets.to_i
# Ziehung << $a6
# end

Ziehung.each do |i|
	
	if i == Ziehung[0]
		puts"--------------------------------------------------------------------------------"
		puts"--------------------------------------------------------------------------------"
		puts ""
		puts"#{i}"
		puts ""
	
	elsif i == Ziehung[-1]
		puts"--------------------------------------------------------------------------------"
		puts ""
		puts"#{i}"
		puts ""
		puts ""
		puts"--------------------------------------------------------------------------------"
		puts"--------------------------------------------------------------------------------"
	else
		puts"--------------------------------------------------------------------------------"
		puts ""
		puts"#{i}"
		puts ""
	end
	
	
end

time = Benchmark.measure {

# drei Richtige
until Ziehung.include?($b1) && Ziehung.include?($b2) && Ziehung.include?($b3) && Ziehung.include?($b4) && Ziehung.include?($b5)&& Ziehung.include?($b6) && $b1 != $b2 && $b1 != $b3 && $b2 != $b3 && $b1 != $b4 && $b2 != $b4 && $b3 != $b4 && $b5 != $b1 && $b5 != $b2 &&  $b5 != $b3 && $b5 != $b4 && $b5 != $b6 && $b6 != $b1 && $b6 != $b2 && $b6 != $b3 && $b6 != $b4   
#until Ziehung.eql? Xiehung
$b1 = rand(49)
#Xiehung << $b1
$b2 = rand(49)
#Xiehung << $b2
$b3 = rand(49)
#Xiehung << $b3
$b4 = rand(49)
#seed = rand(99)
#srand seed
#Xiehung << $b4
$b5 = rand(49)
$b6 = rand(49)
count += 1

case 
	when count  == 1000000 

		puts "#{count.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}. Ziehung" 
	when count == 100000 

		puts "#{count.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}. Ziehung" 	

	when count == 100000000 

		puts "#{count.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}. Ziehung" 	
	end
#Xiehung.clear
end } 
puts"--------------------------------------------------------------------------------"

puts"Herzlichen Glückwunsch :-) !"
puts""
puts"Sechs Richtige: #{$b1}, #{$b2}, #{$b3}, #{$b4}, #{$b5}, #{$b6} gewonnen !!!" 
puts""
puts".... nach #{count.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse} Ziehungen."
puts""
puts"Bitte um Geduld...also nach #{(count/104).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.')} Jahren."
puts""
puts"Zeit : #{(time.real).round.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.')}sec, #{(count/time.real).round.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.')} Ziehungen/sec,"
puts""
puts"#{($Zps/(time.real/count)).round} mal so schnell wie Lotto am Samstag und Mittwoch zusammen."
puts""
puts"Das macht dann #{count.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse} Euro"
puts""
puts"--------------------------------------------------------------------------------"
#number_with_delimiter(98765432.98, :delimiter => ",", :separator => ".")
sleep(20)

