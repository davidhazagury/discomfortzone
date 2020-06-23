class ChangeEventUserStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :event_users, :status, :integer, null: false, default: 0
  end
end
