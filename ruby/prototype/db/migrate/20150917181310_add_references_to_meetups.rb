class AddReferencesToMeetups < ActiveRecord::Migration
  def change
    add_reference :meetups, :user, index: true, foreign_key: true
    add_reference :meetups, :festival, index: true, foreign_key: true
  end
end
