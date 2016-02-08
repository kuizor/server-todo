class History < ActiveRecord::Base
  belongs_to :player
  belongs_to :champion
end
