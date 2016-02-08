
require_relative 'service.rb'
require_relative 'titles.rb'
require_relative 'marshall'
require_relative 'colors.rb'
require_relative 'validation.rb'

class HandWriting
  
  attr_accessor :objects_titles

  def initialize
	@service=Service.new
	@objects_titles=Array.new
  end

  def choose_titles
	op=0
	puts("Welcome")
	@service.response.each_with_index do |i,index|
	@objects_titles.push Titles.new(i["id"],i["title"])
	test_title=@service.titles_test(i["id"])
	puts "#{index+1} - #{i["title"]}    Link de muestra : #{test_title} "
	puts()
		end

	while op<1 || op>@objects_titles.length
	  puts(puts("Escoja un tipo de fuente"))
	  op=gets.chomp.to_i
	  if op<1 || op>@objects_titles.length
		puts("Debe escojer una opción valida")
		puts("Presione cualquier tecla para continuar")
		gets.chomp
	  else
		puts "Has escogido la fuente #{@objects_titles[op-1].title}"
		puts("Presione cualquier tecla para continuar")
		gets.chomp
	  end
	end
	@objects_titles[op-1].id
	end

  def create_text(id)
  	while true
	  validation=Validation.new
	  color_op=0
	  format_op=0
	  puts("Indique el nombre la carta")
	  filename=gets.chomp
	  resp=validation.text_validation(filename)
	  if resp
		fields_validation(id,1)
		break
	  end
	  name=filename
	  filename+=".txt"
	  puts "Indique el texto de la carta"
	  text=gets.chomp
	  puts("Indique el ancho de la carta ")
	  width=gets.chomp
	  resp=validation.number_validation(width)
	  if resp
	    fields_validation(id,0)
	    break
	  end
	  puts "Indique el tamaño de la letra de la carta"
	  size=gets.chomp
	  resp=validation.number_validation(size)
	  if resp
	    fields_validation(id,0)
	    break
	  end
	  while (color_op<1 || color_op>5)
		puts("Indique el color de la letra")
		puts ("1- Negro")
		puts ("2- Rojo")
		puts ("3- Verde")
		puts("4- Azul")
		puts ("5- Amarillo")
		color_op=gets.chomp.to_i
		if (color_op<1 || color_op>5)
		  puts("Debe elegir un color valido")
		  puts("Presione cualquier tecla para continuar")
		  gets.chomp
		  system("clear")
		  end
	    end    
	    params= {:handwriting_id=>"#{id}",
	              :text=>"#{text}",
	              :handwriting_size=>"#{size}"
	        	   }
	    while (format_op<1 || format_op>3)
	      puts ("Indique en que formato desea su carta")
	      puts(puts())
	      puts ("1-PNG")
	      puts ("2-PDF")
	      format_op=gets.chomp.to_i
		  if format_op <1 || format_op>3
		    puts ("Debe escojer la opción 1 o 2 ")
		    puts("Presione enter para continuar")
		    gets.chomp
		    system("clear")
		  elsif format_op==1
		    color_object=Colors.new
		    color=color_object.png_colors(color_op)
		    params[:handwriting_size]=params[:handwriting_size]+'px'
		    params[:handwriting_color]=color
		    params[:width]=width+'px'
		    @service.render(filename,params,"png")	
		  else
		    color_object=Colors.new
		        	color=color_object.pdf_colors(color_op)
		        	params[:handwriting_size]=params[:handwriting_size]+'pt'
		        	params[:handwriting_color]=color
		        	params[:width]=width+'in'
		        	@service.render(filename,params,"pdf")
		   end
		end
		   puts "¡ Se ha creado la carta #{name} !"
		   puts("Presione cualquier tecla para continuar")
		   gets.chomp
		   break
		end
	end

  def send_email(file)
  	params={}
	puts("Indique el nombre del emisor del correo electrónico")
	name=gets.chomp
	name+=' <mailgun@sandbox1c220de0c3cf49c29f1aad35270d589e.mailgun.org>'
	puts("Indique el email del destinario")
	email=gets.chomp
	puts("Indique el asunto del correo electrónico")
	subject=gets.chomp
	puts("Indique el cuerpo del mensaje")
	text=gets.chomp
	params={from:"#{name}",
			to:"#{email}",
			subject:"#{subject}",
			text:"#{text}",
		    :attachment => File.new(File.join("#{file}"))
			}
	@service.send_email(params)
	puts("El email ha sido enviado ")
	puts("Presione cualquier tecla para continuar")
	gets.chomp
  end

  def view_titles
  	system("clear")
	letter_op=0
	file='files/'
	puts("VISOR DE CARTAS")
	puts(puts())
    files=Dir.entries("./files").select{|i| i[-4..-1]=='.txt'}
    names_files=[]
   	files.each{|i| names_files.push i[0..-5]}
   	if names_files.length!=0
   	  names_files.each_with_index do |i,index|
      puts "#{index+1} - Nombre de la carta : #{i}"
    end
    puts "#{names_files.length+1} - Volver atras"
	while(letter_op<1 || letter_op>names_files.length)
	  puts("Escoja el numero de la carta")
	  letter_op=gets.chomp.to_i
	  if letter_op==names_files.length+1
        break
      elsif (letter_op<1 || letter_op>names_files.length)
	    puts("Debe escojer una opción valida")
	    puts("Presione cualquier tecla para continuar")
	    gets.chomp
	    system("clear")
		view_titles 
		break
	   else
		 system("clear")
		 puts ("Ha escogido la carta #{names_files[letter_op-1]}")
		 filename=file+"#{names_files[letter_op-1]}"+'.txt'
		 puts("¿Desea ver la carta en su PC o enviarla por correo?")
		 puts("1- Ver la carta en la PC")
		 puts("2- Enviar la carta por correo")
		 puts ("3- Eliminar carta")
		 puts("4- Volver atras")
		 op=gets.chomp.to_i
		 if op==1
		  archive=Marshall.new
		  archive.deserialized(filename)
		  puts("El archivo ha sido creado en la carpeta files")
		  puts("Presione cualquier tecla para continuar")
		  gets.chomp
		 elsif op==2
		  archive=Marshall.new
		  filename=archive.deserialized(filename)
		  send_email(filename)
		  File.delete(filename)
		 elsif op==3
		  del_op=0
		  system("clear")
		  while(del_op<1 || del_op>2)
		    puts("Esta seguro que desea eliminar la carta #{names_files[letter_op-1]}")
			puts(puts("1- Si"))
			puts ("2- Cancelar ")
			del_op=gets.chomp.to_i	
			if del_op==1
				system("clear")
				File.delete(filename)
				puts("Se ha eliminado la carta #{names_files[letter_op-1]}")
				puts("Presione cualquier tecla para volver atras")
				gets.chomp
			elsif del_op==2
				system("clear")
				puts("No se ha eliminado la carta #{names_files[letter_op-1]}")
				puts("Presione cualquier tecla para volver atras")
				gets.chomp
				view_titles
			else
				puts("Debe elegir una opción valida")
				puts("Presione cualquier tecla para volver atras")
				gets.chomp
				ystem("clear")
			end
		end  	

		elsif op==4
			view_titles
		elsif op!=4
			puts("Opción incorrecta")
			puts("Presione cualquier tecla para continuar")
			gets.chomp		    		
		end
	end
  end
		else
		  puts("No posee cartas, escoja la opción para crear una carta ! :D")
		  puts("Presione cualquier tecla para continuar")
		  gets.chomp
		end
	end

private
	def fields_validation(id,type)
		if type==1

			puts("No pueden haber espacios en blanco en este campo")
			puts("Pulse una tecla para continuar")
			gets.chomp
			system("clear")
			create_text(id)
		else
			puts("Debe colocar un número valido")
			puts("Pulse una tecla para continuar")
			gets.chomp
			system("clear")
			create_text(id)
		end
	end

end

