class CreateAdjs < ActiveRecord::Migration
  def change
    create_table :adjs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
