class Store
	attr_accessor :storeid, :storename
	def initialize(store)
		@storeid=store["storeID"]		#->variable de intercambio StoreId
		@storename=store["storeName"]	#->variable de intercambio StoreName
	end
end