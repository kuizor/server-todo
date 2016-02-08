
class Marshall

	def serialized(filename,body)
		File.open(filename, 'w') do |f|
		Marshal.dump(body,f)
		end
	end


	def deserialized(filename)
		format_pdf=is_pdf?(filename)
		if format_pdf
			filename=create_file(filename,".pdf")
		else
			filename=create_file(filename,".png")
  		end
  		filename
	end
private

	def is_pdf?(filename)
		con=0
		var='text'
		File.readlines(filename).each do |line|
			if con!=1
				var=line
				con+=1
			else
				break
			end
		end

		if var.length==15
			true
		else
			false
		end
	end

	def create_file(filename,format)
		File.open(filename) do |f|
	  	archive=Marshal.load(f)
	  	filename[-4..-1]="#{format}"
	  	    File.open(filename,"wb") do |f|
	  		 f.write(archive)
	  		 end
	  	end
	  	filename
	end
end

