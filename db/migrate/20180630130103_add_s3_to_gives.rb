class AddS3ToGives < ActiveRecord::Migration[5.0]
  def change
    add_column :gives, :image, :string
  end
end
