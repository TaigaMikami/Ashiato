class CreateTravels < ActiveRecord::Migration[5.1]
  def change
    create_table :travels do |t|
      t.integer :uid
      t.string :title, null: false
      t.string :image_url, null: false
      t.text :description
      t.integer :views
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
