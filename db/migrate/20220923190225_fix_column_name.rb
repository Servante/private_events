class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :invitations, :attended_event, :attended_event_id
  end
end
