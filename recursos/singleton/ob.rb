class Demo
	def initialize(n)
    	@ip = n
  	end	
  	def hello()
    	"Hello, @iv = #{@iv}"
  	end
end

class requi
	def pepe
		'Hola'
	end
end


k = Demo.new(99)
def k.hi
  "Hi, @ip = #{@ip}"
end


m = k.singleton_method(:hi)
m.call   #=> "Hi, @iv = 99"
#m = k.singleton_method(:hello) #=> NameError
