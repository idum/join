class FixEventName < ActiveRecord::Migration[8.1]
  def change
    rename_column :events, :title, :name
  end
end
