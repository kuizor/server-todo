require_relative "hand_writing"

class Menu

	def initialize
    @title=HandWriting.new
    op=1
    while op!=4
      system("clear")
  		puts("Bienvenido indique la opción que desea realizar")
  		puts ("1- Elegir un tipo de fuente ")
  		puts ("2- Escribir carta ")
      puts ("3- Ver todas las cartas creadas")
      puts ("4- Salir")
      op=gets.chomp.to_i
      if op==1
        @font_id=@title.choose_titles
      elsif op==2
        if @font_id==nil 
          puts "Debe escojer una fuente para crear una carta"
          puts("Presione cualquier tecla para continuar")
          gets.chomp
        else
          @title.create_text(@font_id)
        end
      elsif op==3
        @title.view_titles
      elsif op!=4
        puts("Debe escojer una opcion valida")
        puts("Presione cualquier tecla para continuar")
        gets.chomp          
      end
    end
  end
end

menu=Menu.new