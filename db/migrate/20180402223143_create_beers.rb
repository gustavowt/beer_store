class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name, null: false
      t.integer :volume
      t.float :abv
      t.string :style
      t.references :brand, foreign_key: true, null: false

      t.timestamps
    end
  end
end
