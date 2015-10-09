class FisTypo2 < ActiveRecord::Migration
  def change
  	add_foreign_key :items, :adj_ids
  end
end
