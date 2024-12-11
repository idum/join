class ChangeNotedEvent2 < ActiveRecord::Migration[8.1]
  def change
    remove_column :noted_events, :users_id
    remove_column :noted_events, :events_id
  end
end
