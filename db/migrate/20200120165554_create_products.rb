class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 15, scale: 2
      t.date :released_on

      t.timestamps
    end
  end
end
