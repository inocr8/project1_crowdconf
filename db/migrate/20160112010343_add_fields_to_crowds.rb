class AddFieldsToCrowds < ActiveRecord::Migration
  def change
    add_column :crowds, :description, :text
    add_column :crowds, :image, :string
  end
end
