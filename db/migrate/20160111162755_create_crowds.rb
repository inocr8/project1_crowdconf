class CreateCrowds < ActiveRecord::Migration
  def change
    create_table :crowds do |t|
      t.string :name
      t.string :group

      t.timestamps null: false
    end
  end
end
