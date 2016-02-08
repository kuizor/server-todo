require_relative "monkey"
require_relative "complex_object"
require 'date'

class Person < Monkey
  attr_accessor :last_name
  attr_accessor :personal_complex_object_array
  @@complex_object_array = []
  # igual a Array.new

  @@SPECIE = "homo-sapiens-sapiens"

  def initialize(name, last_name, birthday) 
    @name = name
    @last_name = last_name
    @birthday = birthday
    @personal_complex_object_array = Array.new
  end

  def name
    @name
  end

  def name=(name) 
    @name = name
  end

  def full_name
    # [@name, @last_name].join(" ")
    @name + " " + @last_name
  end

  def talk
    reasoning
    # @name Asi no retorna nil
  end

  def evolving
    evolve
  end

  def print_arms
    arms
  end

  def person_age
    self.class.age(@birthday)
  end

  def self.age_calculation(birthday)
    age(birthday)
  end

  def building(tool = "hand", material = "water", material2 = "soil")
    complex_object_name = ComplexObject.build(tool, material, material2)
    @@complex_object_array.push(complex_object_name)
    complex_object_name
  end

  def personal_building(tool = "hand", material = "water", material2 = "soil")
    complex_object_name = ComplexObject.build(tool, material, material2)
    @@complex_object_array.push(complex_object_name)
    @personal_complex_object_array.push(complex_object_name)
    complex_object_name
  end


  private

  def reasoning
    puts "I'm reasoning!!!"
  end

  def self.age(birthday)
    unless birthday.class == Date
      birthday = Date.parse(birthday)
    end
    present = Time.now
    if (present.month - birthday.month >= 0)
      return present.year - birthday.year
    else
      return present.year - birthday.year - 1
    end
  end
end