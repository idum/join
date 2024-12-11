class ChangeNotedEvent < ActiveRecord::Migration[8.1]
  def change
    remove_index :noted_events, :users_id
    remove_index :noted_events, :events_id
    add_reference :noted_events, :user, null: false, foreign_key: true, index: true
    add_reference :noted_events, :event, null: false, foreign_key: true, index: true
  end
end
