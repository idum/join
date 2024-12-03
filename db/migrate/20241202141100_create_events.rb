class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.text :name
      t.text :descr
      t.text :location

      t.timestamps
    end
  end
end
