class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.text :comment

      t.timestamps null: false
    end
  end
end
