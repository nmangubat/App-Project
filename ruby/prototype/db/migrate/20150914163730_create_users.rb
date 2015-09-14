class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.float :age
      t.string :country

      t.timestamps null: false
    end
  end
end
