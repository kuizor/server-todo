class ComplexMaterial < ActiveRecord::Base
  belongs_to :commercial_building
  has_many :material_relations
  has_many :basic_materials, through: :material_relations
end
