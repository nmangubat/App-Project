class AddPaperclipToFestival < ActiveRecord::Migration
  def change
  	add_attachment :festivals, :image 
  end
end
