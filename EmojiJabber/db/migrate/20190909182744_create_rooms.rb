class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.text :name
      t.integer :user_id

      t.timestamps
    end
  end
end
