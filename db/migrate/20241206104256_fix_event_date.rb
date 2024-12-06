class FixEventDate < ActiveRecord::Migration[8.1]
  def change
    remove_column :events, :date
    add_column :events, :date, :datetime
  end
end
