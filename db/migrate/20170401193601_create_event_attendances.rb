class CreateEventAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :event_attendances do |t|
      t.integer :event_id, foreign_key: true
      t.integer :attendee_id, foreign_key: true

      t.timestamps
    end
  end
end
