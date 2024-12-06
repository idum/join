class EventManager < ActiveRecord::Migration[8.1]
  def change
    create_table :event_managers do |t|
      t.belongs_to :users
      t.belongs_to :events
      t.boolean :registered, default: false
    end
  end
end
