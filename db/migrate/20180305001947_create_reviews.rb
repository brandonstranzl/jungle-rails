class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.integer :product_id
      t.integer :user_id
      t.references :product
      t.references :user

      t.timestamps
    end

    add_index :reviews, :product_id
    add_index :reviews, :user_id

  end
end
