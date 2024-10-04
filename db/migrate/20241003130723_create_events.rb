class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.text :info
      t.text :gif
      t.integer :join_max
      t.text :address

      t.timestamps
    end
  end
end
