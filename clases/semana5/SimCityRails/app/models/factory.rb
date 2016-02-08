class Factory < ActiveRecord::Base
  belongs_to :city
  belongs_to :factory_type
  has_many :basic_materials, through: :factory_basic_materials
  has_many :factory_basic_materials

  validate :metodo #Nuestra propia validacion es sin s en "validate" y se llama a la clase sin self
  private
  def metodo
  	city_level = City.find(city_id).level
  	if city_level < Factory_type.find(factory_type_id).required_level
  		errors.add(:factory_type_id,"You dont have the required level")
  	end
  end
end
