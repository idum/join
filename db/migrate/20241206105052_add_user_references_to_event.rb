class AddUserReferencesToEvent < ActiveRecord::Migration[8.1]
  def change
    add_reference :events, :user, null: false, foreign_key: true, index: true
  end
end
