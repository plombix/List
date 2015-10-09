class AddRefToItem < ActiveRecord::Migration
  def change

  		add_reference :adjs ,:items, index:true
 end
end
