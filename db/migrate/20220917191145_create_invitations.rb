class CreateInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations do |t|
      t.integer :event_id
      t.integer :attendee_id
      t.integer :attended_event

      t.timestamps
    end
  end
end
