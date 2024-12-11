class ChangeNotedEvent3 < ActiveRecord::Migration[8.1]
  def change
    add_index :noted_events, [ :user_id, :event_id ], unique: true
  end
end
