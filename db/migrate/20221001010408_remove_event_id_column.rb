class RemoveEventIdColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :invitations, :event_id
  end
end
