class FisTypo < ActiveRecord::Migration
  def change
  	rename_column :adjs, :items_id, :item_id
  end
end
