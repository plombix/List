class CreateGroupAdjs < ActiveRecord::Migration
  def change
    create_table :group_adjs do |t|
      t.string :name
      t.references :adj, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
