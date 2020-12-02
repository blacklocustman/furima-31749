class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product_name, foreign_key: true
      t.string :category, null: false
      t.string :seller, null: false
      t.string :price, null: false

      t.timestamps
    end
  end
end
