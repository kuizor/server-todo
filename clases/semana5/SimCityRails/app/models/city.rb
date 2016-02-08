class City < ActiveRecord::Base
  belongs_to :mayor
  has_many :factories
  has_many :commertial_buildings

  validates_presence_of :mayor_id

  before_create :assign_initial_values

  private
  def assign_initial_values 
  	self.population = 0
  	self.happines_percentage = 0
  	self.level = 1
  	self.money = 0
  end
end
