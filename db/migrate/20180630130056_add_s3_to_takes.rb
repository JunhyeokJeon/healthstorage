class AddS3ToTakes < ActiveRecord::Migration[5.0]
  def change
    add_column :takes, :image, :string
  end
end
