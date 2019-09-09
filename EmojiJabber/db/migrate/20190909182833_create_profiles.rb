class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :bio
      t.string :default_picture, default: "https://www.usmagazine.com/wp-content/uploads/1434730838_tom-from-myspace-441.jpg?w=350&h=441&crop=1"
      t.timestamps
    end
  end
end
