require_relative "monkey"
require_relative "complex_object"
require 'date'

# Person hereda de Monkey todos los metodos publicos o privados
class Person < Monkey
  # The Time class represents dates and times in Ruby. It is a thin layer over the system 
  # date and time functionality provided by the operating system.

  attr_accessor :last_name
  attr_reader :personal_complex_object_array

  @@SPECIE = "homo-sapiens-sapiens"
  @@complex_object_array = []

  def initialize (name = "", last_name = "", birthday = "1800-01-01")
    @name = name
    @last_name = last_name
    @birthday = Date.parse(birthday)
    # Tambien se puede hacer Date.parse('2001-02-03')
    # brithday.to_date -> (pasa de arreglo a fecha)
    # Para eso "2010-01-01".split("-") Lo convierte en un arreglo
    @personal_complex_object_array = Array.new
  end

  def name 
    @name
  end

  def name=(name)
    @name = name
  end

  def full_name
    [name, last_name].join(" ")
  end

  # Metodo de objeto
  def person_age
    # .class Llama los metodos de clase de la clase misma (.self)
    # Yo como objeto puedo revisar cuales son los metodos de mi clase
    # Person. es igual a self.class.
    self.class.age(@birthday)
  end

  # Metodo de clase
  def self.age_calculation(birthday)
    #  No necesito poner self.age porque es del mismo tipo de self.age_calculation
    age(birthday)
  end 


  def self.complex_object_array
    @@complex_object_array
  end

  def talk
    reasoning
  end

  def primate_evolution
    #Puedo llamar metodos privados desde el hijo
    evolve
  end

  def building(tool = "hand", material = "water", material2 = "soil")
    complex_object = ComplexObject.new
    complex_object_name = complex_object.build(tool, material, material2)
    @@complex_object_array.push(complex_object_name)
    complex_object_name
  end

  def personal_building(tool = "hand", material = "water", material2 = "soil")
    complex_object = ComplexObject.new
    complex_object_name = complex_object.build(tool, material, material2)
    # Asignamos el personal_building al arreglo de buildings de la clase
    # puts "Arreglo de clase1 #{@@complex_object_array}"
    @@complex_object_array.push(complex_object_name)
    # puts "Arreglo de clase2 #{@@complex_object_array}"
    @personal_complex_object_array.push(complex_object_name)
    # self.personal_complex_object_array.push(complex_object) Si esta definido un accessor
    puts "Desde personal_building method"
    puts @personal_complex_object_array
    complex_object_name
  end

  # Acceso PRIVATE(accedido solo por la clase... y, EN RUBY, desde los hijos si no se especifica lo 
  # contrario en el hijo, porque el hijo no toma en cuenta el private)- PUBLIC (accedido por la clase, 
  # sus clases hijas y cualq otra clase)-PROTECTED(solo por la clase y clases hijas). 
  # $variable es una GLOBAL 
  private

  def reasoning
    puts "I'm thinking at something abstract!!"
  end

  # Metodo de clase
  # Accede al hacer desde la consola Person.age("2-5-1988") porque al llamar Person ya estoy dentro de la clase
  def self.age(birthday)
    # La idea es que el servicio utilice el metodo ya existente de instancia. Pero el problema es que
    # para esto es necesario inicializar una instancia con el valor que quiere el usuario...NOT GOOD!
    unless birthday.class == Date 
      birthday = Date.parse(birthday)
    end
    present = Time.now
    if (present.month - birthday.month >= 0)
      return present.year - birthday.year
    elsif (present.month - birthday.month < 0)
      return present.year - birthday.year - 1
    end
  end
  
end