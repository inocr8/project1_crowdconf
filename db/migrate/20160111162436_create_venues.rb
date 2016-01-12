class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :capacity
      t.string :colour
      t.string :venue_image

      t.timestamps null: false
    end
  end
end
