class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :description
      t.stringrails :image
      t.string :g
      t.string :model
      t.string :Topic
      t.integer :user_id
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
