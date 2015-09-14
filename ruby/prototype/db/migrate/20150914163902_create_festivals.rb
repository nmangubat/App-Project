class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :date
      t.string :type
      t.string :location

      t.timestamps null: false
    end
  end
end
