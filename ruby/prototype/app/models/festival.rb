class Festival < ActiveRecord::Base
	has_many :comments

		has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "1600x1600" }

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end


