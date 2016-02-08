class Follow < ActiveRecord::Base
  belongs_to :source_profile, class_name: "Profile"
  belongs_to :target_profile, class_name: "Profile"
end
