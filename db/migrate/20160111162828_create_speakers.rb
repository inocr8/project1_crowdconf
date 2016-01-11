class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.string :company

      t.timestamps null: false
    end
  end
end
