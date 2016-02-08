class User < ActiveRecord::Migration
	after_create :normalize

	def normalize
		self.isodd = self.id.odd?
	end
end
