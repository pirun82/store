class CreateDep002s < ActiveRecord::Migration
  def change
    create_table :dep002s do |t|
      t.integer :product_key
      t.string :name
      t.text :description
      t.text :picurl
      t.integer :whole_sale
      t.integer :retail_value

      t.timestamps null: false
    end
  end
end
