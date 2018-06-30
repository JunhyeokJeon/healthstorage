class CreateGiveComments < ActiveRecord::Migration[5.0]
  def change
    create_table :give_comments do |t|
      t.string :content
      t.integer :give_id

      t.timestamps
    end
  end
end
