class RenameEventManagerToNotedEvent < ActiveRecord::Migration[8.1]
  def change
    rename_table :event_managers, :noted_events
  end
end
