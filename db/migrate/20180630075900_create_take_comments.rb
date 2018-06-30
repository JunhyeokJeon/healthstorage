class CreateTakeComments < ActiveRecord::Migration[5.0]
  def change
    create_table :take_comments do |t|
      t.string :content
      t.integer :take_id
      t.integer :user_id

      t.timestamps
    end
  end
end
