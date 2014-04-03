class Merchant < ActiveRecord::Base
	#define the relationships
	has_many :transactions
	has_many :purchasers, :through => :transactions



end
