class Transaction < ActiveRecord::Base
  #define the relationships
  belongs_to :purchaser
  belongs_to :merchant

  #define the variable used
  attr_accessor :merchant_name
  attr_accessor :purchaser_name
  attr_accessor :merchant_address

  #define the action after save
  before_save :assigns



  #define the action that will realize after save with the relationship
  def assigns
      if @merchant_name
        mer=Merchant.find_or_create_by_name_and_address(@merchant_name, @merchant_address)
        self.merchant_id=mer.id      
      end
      if @purchaser_name
        pur=Purchaser.find_or_create_by_name(@purchaser_name)
        self.purchaser_id=pur.id      
      end
  end

end
