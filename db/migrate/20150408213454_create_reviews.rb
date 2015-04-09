class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.text :comment
      t.belongs_to :user
      t.belongs_to :market
      
      t.timestamps null: false
    end
  end
end
