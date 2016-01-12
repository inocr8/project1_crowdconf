class AddImageToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :speaker_image, :string
  end
end
