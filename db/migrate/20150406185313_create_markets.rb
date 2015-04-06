class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address
      t.string :zipcode
      t.integer :longitude
      t.integer :latitude
      t.boolean :accepts_ebt
      t.belongs_to :city
    end
  end
end
