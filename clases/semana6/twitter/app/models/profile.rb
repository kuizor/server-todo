class Profile < ActiveRecord::Base
  belongs_to :user
  
  has_many :tweets
  has_many :target_profile, foreign_key: "target_profile_id", class_name: "Follow"
  has_many :source_profile, foreign_key: "source_profile_id", class_name: "Follow"
  has_many :followings, through: :target_profile, source: "target_profile"
  has_many :followers, through: :source_profile, source: "source_profile" 
end
