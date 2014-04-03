class Purchaser < ActiveRecord::Base
	#define the relationships
	has_many :transactios
	has_many :merchants, :through => :transactions
end
