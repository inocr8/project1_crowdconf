class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :short
      t.text :description
      t.string :event_image
      t.references :speaker, index: true, foreign_key: true
      t.references :crowd, index: true, foreign_key: true
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
