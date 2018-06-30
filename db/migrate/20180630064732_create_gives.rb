class CreateGives < ActiveRecord::Migration[5.0]
  def change
    create_table :gives do |t|
      t.string :title
      t.text :content
      t.string :name

      t.timestamps
    end
  end
end
