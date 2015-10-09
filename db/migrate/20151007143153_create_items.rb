class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :goupAdj, index: true, foreign_key: true
      t.references :adj, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
