class Person < ActiveRecord::Base
	before_save :normalize
	validates :name, :last_name, presence: true
	private
	def normalize
		#self.name.upcase ->una forma 
		self.class.attribute_names.each do |attr|
			self.send(attr).upcase! if self.send(attr).class == String
		end
	end					
end
