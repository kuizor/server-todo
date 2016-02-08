class UserSerializer < ActiveModel::Serializer
	attributes :login#, :password
	has_one :profile
end