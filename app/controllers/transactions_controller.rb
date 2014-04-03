class TransactionsController < ApplicationController
  def new
  	@transaction=Transaction.new
  end
    
  def create
  	#read a text a change to array
  	@total=0
    files=params[:transaction][:file].read.split("\n")
    files.shift
    files.each  do |f|
      files2=f.split("\t")
      transaction=Transaction.new
	  transaction.purchaser_name=files2[0]
	  transaction.item_description=files2[1]
	  transaction.item_price=files2[2]
	  transaction.purchase_count=files2[3]
	  transaction.merchant_address=files2[4]
	  transaction.merchant_name=files2[5]
	  transaction.save
	  @total+=transaction.item_price*transaction.purchase_count
	end
 
     render :index
  end
end
