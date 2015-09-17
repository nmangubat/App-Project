class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :location
      t.string :time

      t.timestamps null: false
    end
  end
end
