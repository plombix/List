class RemoveRefFromItems < ActiveRecord::Migration
  def change
  	remove_column :group_adjs ,:adj_id
  end
end
