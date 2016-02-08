a = Array.new(3){Array.new(3)}

for i in 0...a.length
	for q in 0...a.length
		a[i][q] = rand(0..20)
		puts "#{a[i][q]}"
	end
end



puts "#{a}"
puts a.length