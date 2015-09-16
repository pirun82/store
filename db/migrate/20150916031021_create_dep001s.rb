class CreateDep001s < ActiveRecord::Migration
  def change
    create_table :dep001s do |t|
      t.string :product_key
      t.string :name
      t.text :description
      t.text :picurl
      t.text :whole_sale
      t.text :retail_value

      t.timestamps null: false
    end
  end
end
