class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :description
      t.integer :rating
      t.datetime :createdat
      t.datetime :updatdat

      t.timestamps null: false
    end
  end
end