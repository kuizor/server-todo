class FollowSerializer < ActiveModel::Serializer
	attributes  :target_profile_id, :source_profile_id
end