class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :rating
      t.string :quantity
      t.references :inventory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
