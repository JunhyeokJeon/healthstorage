class CreateTakes < ActiveRecord::Migration[5.0]
  def change
    create_table :takes do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
