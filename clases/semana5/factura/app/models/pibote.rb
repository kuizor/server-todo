class Pibote < ActiveRecord::Base
  belongs_to :fact
  belongs_to :item
end
