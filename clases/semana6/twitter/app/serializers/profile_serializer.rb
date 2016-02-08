class ProfileSerializer < ActiveModel::Serializer
	attributes :user_id, :name, :last_name, :sex
	has_many :tweets
	has_many :target_profile
	has_many :source_profile
end