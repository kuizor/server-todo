class MaterialRelation < ActiveRecord::Base
  belongs_to :complex_meterial
  belongs_to :basic_material
end
