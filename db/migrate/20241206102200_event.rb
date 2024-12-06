class Event < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :descr
      t.string :address
      t.time :date
    end
  end
end
