# Ejercicio: Crearemos una ciudad! 
# Las personas son instancias de Persona. Existiran herramientas. El uso de dos 
# herramientas pasadas por parametro a la clase persona haran objetos complejos, 
# como una rueda. Una rueda mas otros objetos complejos pasados por parametro
# a una persona (o un robot) haran obj complejos como un carro. (NO en el ejercicio)
# Carros mas edificios crearan un espectro de posibilidades de vida y desempeno 
# para las personas que crearan ciudades.

# irb -r "./person.rb"

require_relative "person"

johanna = Person.new("Johanna", "Salazar", "1988-05-02")
johanna.name
puts johanna.name
johanna.name = "Johanna Maria"
puts johanna.name
johanna.last_name = "Salazar Bove"
puts johanna.full_name
puts johanna.person_age
puts Person.age("1988-05-02")
puts Person.age_calculation("1988-05-02")
puts Monkey.have_thumb
johanna.talk
puts johanna.peeing
johanna.primate_evolution

puts johanna.building("hammer", "clay")
complex_object1 = johanna.building("screwdriver", "wheel", "chassis")
puts complex_object1
complex_object2 = johanna.building("hammer", "brick", "tube")
puts complex_object2
puts "Imprimiendo complex_object_array"
puts Person.complex_object_array

johanna.personal_building("screwdriver", complex_object1, complex_object2)
puts "Imprimiendo personal_complex_object_array"
puts johanna.personal_complex_object_array
puts "Imprimiendo complex_object_array"
puts Person.complex_object_array