class Validation

  def text_validation(text)

	count=false
	if text.empty?
		count=true
	else
		text.each_char do |letter|
	  		if letter==' '
	  			count=true
	  			break
	  		end
	  	end
  	end 
  	count 		
  end

  def number_validation(number)

  	if number.to_i==0
  		true
  	end

  end

end
